use v6;
#  -- DO NOT EDIT --
# generated by: etc/generator.p6 

unit module LibXML::Native::Gen::xmlversion;
# compile-time version informations:
#    compile-time version informations for the XML library 
use LibXML::Native::Defs :LIB, :XmlCharP;
    sub xmlCheckVersion(int32 $version --> void) is native(LIB) {*};
