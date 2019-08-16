use v6;
#  -- DO NOT EDIT --
# generated by: etc/generator.p6 

unit module LibXML::Native::Gen::pattern;
# pattern expression handling:
#    allows to compile and test pattern expressions for nodes either in a tree or based on a parser state. 
use LibXML::Native::Defs :LIB, :XmlCharP;

enum xmlPatternFlags is export {
    XML_PATTERN_DEFAULT => 0,
    XML_PATTERN_XPATH => 1,
    XML_PATTERN_XSFIELD => 4,
    XML_PATTERN_XSSEL => 2,
}

struct xmlPattern is repr('CPointer') {
    sub xmlPatterncompile(xmlCharP $pattern, xmlDict * $dict, int32 $flags, const xmlChar ** $namespaces --> xmlPattern) is native(LIB) {*};
    method xmlFreePattern( --> void) is native(LIB) {*};
    method xmlFreePatternList( --> void) is native(LIB) {*};
    method xmlPatternFromRoot( --> int32) is native(LIB) {*};
    method xmlPatternGetStreamCtxt( --> xmlStreamCtxt) is native(LIB) {*};
    method xmlPatternMatch(xmlNode $node --> int32) is native(LIB) {*};
    method xmlPatternMaxDepth( --> int32) is native(LIB) {*};
    method xmlPatternMinDepth( --> int32) is native(LIB) {*};
    method xmlPatternStreamable( --> int32) is native(LIB) {*};
}

struct xmlStreamCtxt is repr('CPointer') {
    method xmlFreeStreamCtxt( --> void) is native(LIB) {*};
    method xmlStreamPop( --> int32) is native(LIB) {*};
    method xmlStreamPush(xmlCharP $name, xmlCharP $ns --> int32) is native(LIB) {*};
    method xmlStreamPushAttr(xmlCharP $name, xmlCharP $ns --> int32) is native(LIB) {*};
    method xmlStreamPushNode(xmlCharP $name, xmlCharP $ns, int32 $nodeType --> int32) is native(LIB) {*};
    method xmlStreamWantsAnyNode( --> int32) is native(LIB) {*};
}
