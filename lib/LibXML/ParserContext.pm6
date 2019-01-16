class X::LibXML::Parser is Exception {
    use LibXML::Native;
    use LibXML::Enums;

    has Str $.text;
    has Str $.file;
    
    method message {
        my $msg = "Error while parsing {$!file // 'XML document'}";
        $msg ~= ":\n" ~ $_ with $!text;
        chomp $msg;
    }
}

class LibXML::ParserContext {
    use LibXML::Native;
    use LibXML::Enums;
    has parserCtxt $.ctx;
    has @!errors;

    submethod TWEAK(:$flags!, :$line-numbers!) {
        die "unable to initialize parser"
            without $!ctx;

        unless $flags +& XML_PARSE_DTDLOAD {
            for (XML_PARSE_DTDVALID, XML_PARSE_DTDATTR, XML_PARSE_NOENT ) {
                $flags -= $_ if $flags +& $_
            }
        }

        $!ctx.UseOptions($flags);     # Note: sets ctxt.linenumbers = 1
        $!ctx.linenumbers = +$line-numbers;

        # error handling
        sub structured-err-func(parserCtxt $, xmlError $_) {
            constant @ErrorDomains = ("", "parser", "tree", "namespace", "validity",
                                      "HTML parser", "memory", "output", "I/O", "ftp",
                                      "http", "XInclude", "XPath", "xpointer", "regexp",
                                      "Schemas datatype", "Schemas parser", "Schemas validity",
                                      "Relax-NG parser", "Relax-NG validity",
                                      "Catalog", "C14N", "XSLT", "validity", "error-checking",
                                      "xmlwriter", "dynamic loading", "i18n",
                                      "Schematron validity");
            my Int $level = .level;
            my Str $msg = .message;
            my @text;
            @text.push: $_ with @ErrorDomains[.domain];
            if $level ~~ XML_ERR_ERROR|XML_ERR_FATAL  {
                @text.push: 'error'
            }
            elsif $level == XML_ERR_WARNING {
                @text.push: 'warning';
            }
            $msg = (@text.join(' '), ' : ', $msg).join
            if @text;

            if .line && .file && !.file.ends-with('/') {
                $msg = (.file, .line, ' ' ~ $msg).join: ':';
            }
            @!errors.push: %( :$level, :$msg);
        }

        $!ctx.xmlSetGenericErrorFunc( sub (parserCtxt $, Str $msg) { @!errors.push: %( :level(XML_ERR_FATAL), :$msg ) });
        $!ctx.xmlSetStructuredErrorFunc( &structured-err-func );

        $!ctx;
    }

    method flush-errors {
        if @!errors {
            my Str $text = @!errors.map(*<msg>).join;
            my $fatal = @!errors.first: { .<level> >= XML_ERR_FATAL };
            my X::LibXML::Parser $err .= new: :$text;
            if $fatal {
                die $err;
            }
            else {
                warn $err;
            }
        }
        @!errors = ();
    }

}