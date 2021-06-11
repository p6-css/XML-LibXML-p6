use LibXML::Node;

#| LibXML DtD Element declaration introspection (experimental)
unit class LibXML::Dtd::ElementDecl
    is repr('CPointer')
    is LibXML::Node;

use LibXML::Dtd::AttrDecl;
use LibXML::Dtd::ElementContent;
use LibXML::Enums;
use LibXML::Raw;
use NativeCall;
use Method::Also;

=begin pod
=head2 Synopsis

=begin code :lang<raku>

use LibXML::Document;
use LibXML::Dtd;
use LibXML::HashMap;
use LibXML::Dtd::ElementDecl;

my $string = q:to<END>;
<!ELEMENT note (to,from,heading,body)>
<!ATTLIST note id CDATA #IMPLIED>
<!ELEMENT to (#PCDATA)>
<!ELEMENT from (#PCDATA)>
<!ELEMENT heading (#PCDATA)>
<!ELEMENT body (#PCDATA)>
END

my LibXML::Dtd $dtd .= parse: :$string;
my LibXML::HashMap[LibXML::Dtd::ElementDecl] $elements = $dtd.element-decls;

my LibXML::Dtd::ElementDecl $note-decl = $elements<note>;
note $note-decl.Str; # <!ELEMENT note (to,from,heading,body)>
note $note-decl.potential-children; # [to from heading body]
note $node-decl.attributes<id>.Str; # <!ATTLIST note id #IMPLIED>

=head2 Methods

=head3 potential-children(UInt :$max = 255)

=para Returns an array (up to size `$max`) of possible immediate child elements names, or '#PCDATA' if the element may have Text or CDATA content.

=end code
=end pod

#| return the parsed content expression for this element declaration
method content(LibXML::Dtd::ElementDecl:D $decl:) {
    my xmlElementContent $raw = $decl.raw.content;
    LibXML::Dtd::ElementContent.new: :$decl, :$raw;
}

#| return a read-only list of attribute declarations
method properties {
    my anyNode $att = $.raw.attributes;
    my LibXML::Dtd::AttrDecl @props;
    while $att.defined && $att.type == XML_ATTRIBUTE_DECL {
        @props.push: LibXML::Node.box($att);
        $att .= next;
    }
    @props;
}
=para for example:
=begin code :lang<raku>
use LibXML::Dtd;
my LibXML::Dtd $dtd .= parse: :string(q:to<X-X-X>);
  <!ELEMENT A ANY>
  <!ATTLIST A
    foo CDATA #IMPLIED
    bar CDATA #IMPLIED
  >
X-X-X

my $A:decl = $dtd.element-declarations<A>;

for $A:decl.properties {
    print .Str;
}
=end code
=para Produces:
=begin code
<!ATTLIST A foo CDATA #IMPLIED>
<!ATTLIST A bar CDATA #IMPLIED>
=end code

#| return a read-only hash of attribute declarations
method attributes is also<attribs attr> {
    my % = @.properties.map: { .nodeName => $_ };
}
method new(|) { fail }
method raw handles <etype prefix> { nativecast(xmlElementDecl, self) }

