use v6;
#  -- DO NOT EDIT --
# generated by: etc/generator.p6 

unit module LibXML::Native::Gen::xmlschemas;
# incomplete XML Schemas structure implementation:
#    interface to the XML Schemas handling and schema validity checking, it is incomplete right now. 
use LibXML::Native::Defs :LIB, :XmlCharP;

enum xmlSchemaValidError is export {
    XML_SCHEMAS_ERR_ => 24,
    XML_SCHEMAS_ERR_ATTRINVALID => 21,
    XML_SCHEMAS_ERR_ATTRUNKNOWN => 20,
    XML_SCHEMAS_ERR_CONSTRUCT => 17,
    XML_SCHEMAS_ERR_ELEMCONT => 10,
    XML_SCHEMAS_ERR_EXTRACONTENT => 13,
    XML_SCHEMAS_ERR_FACET => 23,
    XML_SCHEMAS_ERR_HAVEDEFAULT => 11,
    XML_SCHEMAS_ERR_INTERNAL => 18,
    XML_SCHEMAS_ERR_INVALIDATTR => 14,
    XML_SCHEMAS_ERR_INVALIDELEM => 15,
    XML_SCHEMAS_ERR_ISABSTRACT => 8,
    XML_SCHEMAS_ERR_MISSING => 4,
    XML_SCHEMAS_ERR_NOROLLBACK => 7,
    XML_SCHEMAS_ERR_NOROOT => 1,
    XML_SCHEMAS_ERR_NOTDETERMINIST => 16,
    XML_SCHEMAS_ERR_NOTEMPTY => 9,
    XML_SCHEMAS_ERR_NOTNILLABLE => 12,
    XML_SCHEMAS_ERR_NOTSIMPLE => 19,
    XML_SCHEMAS_ERR_NOTTOPLEVEL => 3,
    XML_SCHEMAS_ERR_NOTYPE => 6,
    XML_SCHEMAS_ERR_OK => 0,
    XML_SCHEMAS_ERR_UNDECLAREDELEM => 2,
    XML_SCHEMAS_ERR_VALUE => 22,
    XML_SCHEMAS_ERR_WRONGELEM => 5,
    XML_SCHEMAS_ERR_XXX => 25,
}

enum xmlSchemaValidOption is export {
    XML_SCHEMA_VAL_VC_I_CREATE => 1,
}

struct xmlSchema is repr('CStruct') {
    has xmlCharP $.name; # schema name
    has xmlCharP $.targetNamespace; # the target namespace
    has xmlCharP $.version;
    has xmlCharP $.id; # Obsolete
    has xmlDocPtr $.doc;
    has xmlSchemaAnnotPtr $.annot;
    has int32 $.flags;
    has xmlHashTablePtr $.typeDecl;
    has xmlHashTablePtr $.attrDecl;
    has xmlHashTablePtr $.attrgrpDecl;
    has xmlHashTablePtr $.elemDecl;
    has xmlHashTablePtr $.notaDecl;
    has xmlHashTablePtr $.schemasImports;
    has Pointer $._private; # unused by the library for users or bindings
    has xmlHashTablePtr $.groupDecl;
    has xmlDictPtr $.dict;
    has Pointer $.includes; # the includes, this is opaque for now
    has int32 $.preserve; # whether to free the document
    has int32 $.counter; # used to give ononymous components unique names
    has xmlHashTablePtr $.idcDef; # All identity-constraint defs.
    has Pointer $.volatiles; # Obsolete
}

struct xmlSchemaParserCtxt is repr('CPointer') {
}

struct xmlSchemaSAXPlugStruct is repr('CPointer') {
}

struct xmlSchemaValidCtxt is repr('CPointer') {
}

sub xmlSchemaDump(FILE * $output, xmlSchemaPtr $schema) is native(LIB) {*};
sub xmlSchemaFree(xmlSchemaPtr $schema) is native(LIB) {*};
sub xmlSchemaFreeParserCtxt(xmlSchemaParserCtxtPtr $ctxt) is native(LIB) {*};
sub xmlSchemaFreeValidCtxt(xmlSchemaValidCtxtPtr $ctxt) is native(LIB) {*};
sub xmlSchemaGetParserErrors(xmlSchemaParserCtxtPtr $ctxt, xmlSchemaValidityErrorFunc * $err, xmlSchemaValidityWarningFunc * $warn, void ** $ctx --> int32) is native(LIB) {*};
sub xmlSchemaGetValidErrors(xmlSchemaValidCtxtPtr $ctxt, xmlSchemaValidityErrorFunc * $err, xmlSchemaValidityWarningFunc * $warn, void ** $ctx --> int32) is native(LIB) {*};
sub xmlSchemaIsValid(xmlSchemaValidCtxtPtr $ctxt --> int32) is native(LIB) {*};
sub xmlSchemaNewDocParserCtxt(xmlDocPtr $doc --> xmlSchemaParserCtxtPtr) is native(LIB) {*};
sub xmlSchemaNewMemParserCtxt(Str $buffer, int32 $size --> xmlSchemaParserCtxtPtr) is native(LIB) {*};
sub xmlSchemaNewParserCtxt(Str $URL --> xmlSchemaParserCtxtPtr) is native(LIB) {*};
sub xmlSchemaNewValidCtxt(xmlSchemaPtr $schema --> xmlSchemaValidCtxtPtr) is native(LIB) {*};
sub xmlSchemaParse(xmlSchemaParserCtxtPtr $ctxt --> xmlSchemaPtr) is native(LIB) {*};
sub xmlSchemaSAXPlug(xmlSchemaValidCtxtPtr $ctxt, xmlSAXHandlerPtr * $sax, void ** $user_data --> xmlSchemaSAXPlugPtr) is native(LIB) {*};
sub xmlSchemaSAXUnplug(xmlSchemaSAXPlugPtr $plug --> int32) is native(LIB) {*};
sub xmlSchemaSetParserErrors(xmlSchemaParserCtxtPtr $ctxt, xmlSchemaValidityErrorFunc $err, xmlSchemaValidityWarningFunc $warn, Pointer $ctx) is native(LIB) {*};
sub xmlSchemaSetParserStructuredErrors(xmlSchemaParserCtxtPtr $ctxt, xmlStructuredErrorFunc $serror, Pointer $ctx) is native(LIB) {*};
sub xmlSchemaSetValidErrors(xmlSchemaValidCtxtPtr $ctxt, xmlSchemaValidityErrorFunc $err, xmlSchemaValidityWarningFunc $warn, Pointer $ctx) is native(LIB) {*};
sub xmlSchemaSetValidOptions(xmlSchemaValidCtxtPtr $ctxt, int32 $options --> int32) is native(LIB) {*};
sub xmlSchemaSetValidStructuredErrors(xmlSchemaValidCtxtPtr $ctxt, xmlStructuredErrorFunc $serror, Pointer $ctx) is native(LIB) {*};
sub xmlSchemaValidCtxtGetOptions(xmlSchemaValidCtxtPtr $ctxt --> int32) is native(LIB) {*};
sub xmlSchemaValidCtxtGetParserCtxt(xmlSchemaValidCtxtPtr $ctxt --> xmlParserCtxtPtr) is native(LIB) {*};
sub xmlSchemaValidateDoc(xmlSchemaValidCtxtPtr $ctxt, xmlDocPtr $doc --> int32) is native(LIB) {*};
sub xmlSchemaValidateFile(xmlSchemaValidCtxtPtr $ctxt, Str $filename, int32 $options --> int32) is native(LIB) {*};
sub xmlSchemaValidateOneElement(xmlSchemaValidCtxtPtr $ctxt, xmlNodePtr $elem --> int32) is native(LIB) {*};
sub xmlSchemaValidateSetFilename(xmlSchemaValidCtxtPtr $vctxt, Str $filename) is native(LIB) {*};
sub xmlSchemaValidateSetLocator(xmlSchemaValidCtxtPtr $vctxt, xmlSchemaValidityLocatorFunc $f, Pointer $ctxt) is native(LIB) {*};
sub xmlSchemaValidateStream(xmlSchemaValidCtxtPtr $ctxt, xmlParserInputBufferPtr $input, xmlCharEncoding $enc, xmlSAXHandlerPtr $sax, Pointer $user_data --> int32) is native(LIB) {*};
