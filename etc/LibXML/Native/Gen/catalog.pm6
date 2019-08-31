use v6;
#  -- DO NOT EDIT --
# generated by: etc/generator.p6 

unit module LibXML::Native::Gen::catalog;
# interfaces to the Catalog handling system:
#    the catalog module implements the support for XML Catalogs and SGML catalogs 
use LibXML::Native::Defs :LIB, :xmlCharP;

enum xmlCatalogAllow is export (
    XML_CATA_ALLOW_ALL => 3,
    XML_CATA_ALLOW_DOCUMENT => 2,
    XML_CATA_ALLOW_GLOBAL => 1,
    XML_CATA_ALLOW_NONE => 0,
)

enum xmlCatalogPrefer is export (
    XML_CATA_PREFER_NONE => 0,
    XML_CATA_PREFER_PUBLIC => 1,
    XML_CATA_PREFER_SYSTEM => 2,
)

class xmlCatalog is repr('CPointer') {
    sub xmlLoadACatalog(Str $filename --> xmlCatalog) is native(LIB) is export {*};
    sub xmlLoadSGMLSuperCatalog(Str $filename --> xmlCatalog) is native(LIB) is export {*};
    sub xmlNewCatalog(int32 $sgml --> xmlCatalog) is native(LIB) is export {*};

    method ACatalogAdd(xmlCharP $type, xmlCharP $orig, xmlCharP $replace --> int32) is native(LIB) is symbol('xmlACatalogAdd') {*};
    method ACatalogDump(FILE * $out) is native(LIB) is symbol('xmlACatalogDump') {*};
    method ACatalogRemove(xmlCharP $value --> int32) is native(LIB) is symbol('xmlACatalogRemove') {*};
    method ACatalogResolve(xmlCharP $pubID, xmlCharP $sysID --> xmlCharP) is native(LIB) is symbol('xmlACatalogResolve') {*};
    method ACatalogResolvePublic(xmlCharP $pubID --> xmlCharP) is native(LIB) is symbol('xmlACatalogResolvePublic') {*};
    method ACatalogResolveSystem(xmlCharP $sysID --> xmlCharP) is native(LIB) is symbol('xmlACatalogResolveSystem') {*};
    method ACatalogResolveURI(xmlCharP $URI --> xmlCharP) is native(LIB) is symbol('xmlACatalogResolveURI') {*};
    method IsEmpty( --> int32) is native(LIB) is symbol('xmlCatalogIsEmpty') {*};
    method ConvertSGML( --> int32) is native(LIB) is symbol('xmlConvertSGMLCatalog') {*};
    method Free() is native(LIB) is symbol('xmlFreeCatalog') {*};
}

sub xmlCatalogAdd(xmlCharP $type, xmlCharP $orig, xmlCharP $replace --> int32) is native(LIB) is export {*};
sub xmlCatalogAddLocal(Pointer $catalogs, xmlCharP $URL --> Pointer) is native(LIB) is export {*};
sub xmlCatalogCleanup() is native(LIB) is export {*};
sub xmlCatalogConvert( --> int32) is native(LIB) is export {*};
sub xmlCatalogDump(FILE * $out) is native(LIB) is export {*};
sub xmlCatalogFreeLocal(Pointer $catalogs) is native(LIB) is export {*};
sub xmlCatalogGetDefaults( --> xmlCatalogAllow) is native(LIB) is export {*};
sub xmlCatalogGetPublic(xmlCharP $pubID --> xmlCharP) is native(LIB) is export {*};
sub xmlCatalogGetSystem(xmlCharP $sysID --> xmlCharP) is native(LIB) is export {*};
sub xmlCatalogLocalResolve(Pointer $catalogs, xmlCharP $pubID, xmlCharP $sysID --> xmlCharP) is native(LIB) is export {*};
sub xmlCatalogLocalResolveURI(Pointer $catalogs, xmlCharP $URI --> xmlCharP) is native(LIB) is export {*};
sub xmlCatalogRemove(xmlCharP $value --> int32) is native(LIB) is export {*};
sub xmlCatalogResolve(xmlCharP $pubID, xmlCharP $sysID --> xmlCharP) is native(LIB) is export {*};
sub xmlCatalogResolvePublic(xmlCharP $pubID --> xmlCharP) is native(LIB) is export {*};
sub xmlCatalogResolveSystem(xmlCharP $sysID --> xmlCharP) is native(LIB) is export {*};
sub xmlCatalogResolveURI(xmlCharP $URI --> xmlCharP) is native(LIB) is export {*};
sub xmlCatalogSetDebug(int32 $level --> int32) is native(LIB) is export {*};
sub xmlCatalogSetDefaultPrefer(xmlCatalogPrefer $prefer --> xmlCatalogPrefer) is native(LIB) is export {*};
sub xmlCatalogSetDefaults(xmlCatalogAllow $allow) is native(LIB) is export {*};
sub xmlInitializeCatalog() is native(LIB) is export {*};
sub xmlLoadCatalog(Str $filename --> int32) is native(LIB) is export {*};
sub xmlLoadCatalogs(Str $pathss) is native(LIB) is export {*};