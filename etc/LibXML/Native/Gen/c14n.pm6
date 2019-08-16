use v6;
#  -- DO NOT EDIT --
# generated by: etc/generator.p6 

unit module LibXML::Native::Gen::c14n;
# Provide Canonical XML and Exclusive XML Canonicalization:
#    the c14n modules provides a  "Canonical XML" implementation
use LibXML::Native::Defs :LIB, :XmlCharP;

enum xmlC14NMode is export {
    XML_C14N_1_0 => 0,
    XML_C14N_1_1 => 2,
    XML_C14N_EXCLUSIVE_1_0 => 1,
}

sub xmlC14NDocDumpMemory(xmlDocPtr $doc, xmlNodeSetPtr $nodes, int32 $mode, xmlChar ** $inclusive_ns_prefixes, int32 $with_comments, xmlChar ** $doc_txt_ptr --> int32) is native(LIB) {*};
sub xmlC14NDocSave(xmlDocPtr $doc, xmlNodeSetPtr $nodes, int32 $mode, xmlChar ** $inclusive_ns_prefixes, int32 $with_comments, Str $filename, int32 $compression --> int32) is native(LIB) {*};
sub xmlC14NDocSaveTo(xmlDocPtr $doc, xmlNodeSetPtr $nodes, int32 $mode, xmlChar ** $inclusive_ns_prefixes, int32 $with_comments, xmlOutputBufferPtr $buf --> int32) is native(LIB) {*};
sub xmlC14NExecute(xmlDocPtr $doc, xmlC14NIsVisibleCallback $is_visible_callback, Pointer $user_data, int32 $mode, xmlChar ** $inclusive_ns_prefixes, int32 $with_comments, xmlOutputBufferPtr $buf --> int32) is native(LIB) {*};
