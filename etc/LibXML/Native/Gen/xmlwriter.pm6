use v6;
#  -- DO NOT EDIT --
# generated by: etc/generator.p6 

unit module LibXML::Native::Gen::xmlwriter;
# text writing API for XML:
#    text writing API for XML 
use LibXML::Native::Defs :LIB, :XmlCharP;

struct xmlTextWriter is repr('CPointer') {
}

sub xmlFreeTextWriter(xmlTextWriterPtr $writer) is native(LIB) {*};
sub xmlNewTextWriter(xmlOutputBufferPtr $out --> xmlTextWriterPtr) is native(LIB) {*};
sub xmlNewTextWriterDoc(xmlDocPtr * $doc, int32 $compression --> xmlTextWriterPtr) is native(LIB) {*};
sub xmlNewTextWriterFilename(Str $uri, int32 $compression --> xmlTextWriterPtr) is native(LIB) {*};
sub xmlNewTextWriterMemory(xmlBufferPtr $buf, int32 $compression --> xmlTextWriterPtr) is native(LIB) {*};
sub xmlNewTextWriterPushParser(xmlParserCtxtPtr $ctxt, int32 $compression --> xmlTextWriterPtr) is native(LIB) {*};
sub xmlNewTextWriterTree(xmlDocPtr $doc, xmlNodePtr $node, int32 $compression --> xmlTextWriterPtr) is native(LIB) {*};
sub xmlTextWriterEndAttribute(xmlTextWriterPtr $writer --> int32) is native(LIB) {*};
sub xmlTextWriterEndCDATA(xmlTextWriterPtr $writer --> int32) is native(LIB) {*};
sub xmlTextWriterEndComment(xmlTextWriterPtr $writer --> int32) is native(LIB) {*};
sub xmlTextWriterEndDTD(xmlTextWriterPtr $writer --> int32) is native(LIB) {*};
sub xmlTextWriterEndDTDAttlist(xmlTextWriterPtr $writer --> int32) is native(LIB) {*};
sub xmlTextWriterEndDTDElement(xmlTextWriterPtr $writer --> int32) is native(LIB) {*};
sub xmlTextWriterEndDTDEntity(xmlTextWriterPtr $writer --> int32) is native(LIB) {*};
sub xmlTextWriterEndDocument(xmlTextWriterPtr $writer --> int32) is native(LIB) {*};
sub xmlTextWriterEndElement(xmlTextWriterPtr $writer --> int32) is native(LIB) {*};
sub xmlTextWriterEndPI(xmlTextWriterPtr $writer --> int32) is native(LIB) {*};
sub xmlTextWriterFlush(xmlTextWriterPtr $writer --> int32) is native(LIB) {*};
sub xmlTextWriterFullEndElement(xmlTextWriterPtr $writer --> int32) is native(LIB) {*};
sub xmlTextWriterSetIndent(xmlTextWriterPtr $writer, int32 $indent --> int32) is native(LIB) {*};
sub xmlTextWriterSetIndentString(xmlTextWriterPtr $writer, xmlCharP $str --> int32) is native(LIB) {*};
sub xmlTextWriterSetQuoteChar(xmlTextWriterPtr $writer, xmlChar $quotechar --> int32) is native(LIB) {*};
sub xmlTextWriterStartAttribute(xmlTextWriterPtr $writer, xmlCharP $name --> int32) is native(LIB) {*};
sub xmlTextWriterStartAttributeNS(xmlTextWriterPtr $writer, xmlCharP $prefix, xmlCharP $name, xmlCharP $namespaceURI --> int32) is native(LIB) {*};
sub xmlTextWriterStartCDATA(xmlTextWriterPtr $writer --> int32) is native(LIB) {*};
sub xmlTextWriterStartComment(xmlTextWriterPtr $writer --> int32) is native(LIB) {*};
sub xmlTextWriterStartDTD(xmlTextWriterPtr $writer, xmlCharP $name, xmlCharP $pubid, xmlCharP $sysid --> int32) is native(LIB) {*};
sub xmlTextWriterStartDTDAttlist(xmlTextWriterPtr $writer, xmlCharP $name --> int32) is native(LIB) {*};
sub xmlTextWriterStartDTDElement(xmlTextWriterPtr $writer, xmlCharP $name --> int32) is native(LIB) {*};
sub xmlTextWriterStartDTDEntity(xmlTextWriterPtr $writer, int32 $pe, xmlCharP $name --> int32) is native(LIB) {*};
sub xmlTextWriterStartDocument(xmlTextWriterPtr $writer, Str $version, Str $encoding, Str $standalone --> int32) is native(LIB) {*};
sub xmlTextWriterStartElement(xmlTextWriterPtr $writer, xmlCharP $name --> int32) is native(LIB) {*};
sub xmlTextWriterStartElementNS(xmlTextWriterPtr $writer, xmlCharP $prefix, xmlCharP $name, xmlCharP $namespaceURI --> int32) is native(LIB) {*};
sub xmlTextWriterStartPI(xmlTextWriterPtr $writer, xmlCharP $target --> int32) is native(LIB) {*};
sub xmlTextWriterWriteAttribute(xmlTextWriterPtr $writer, xmlCharP $name, xmlCharP $content --> int32) is native(LIB) {*};
sub xmlTextWriterWriteAttributeNS(xmlTextWriterPtr $writer, xmlCharP $prefix, xmlCharP $name, xmlCharP $namespaceURI, xmlCharP $content --> int32) is native(LIB) {*};
sub xmlTextWriterWriteBase64(xmlTextWriterPtr $writer, Str $data, int32 $start, int32 $len --> int32) is native(LIB) {*};
sub xmlTextWriterWriteBinHex(xmlTextWriterPtr $writer, Str $data, int32 $start, int32 $len --> int32) is native(LIB) {*};
sub xmlTextWriterWriteCDATA(xmlTextWriterPtr $writer, xmlCharP $content --> int32) is native(LIB) {*};
sub xmlTextWriterWriteComment(xmlTextWriterPtr $writer, xmlCharP $content --> int32) is native(LIB) {*};
sub xmlTextWriterWriteDTD(xmlTextWriterPtr $writer, xmlCharP $name, xmlCharP $pubid, xmlCharP $sysid, xmlCharP $subset --> int32) is native(LIB) {*};
sub xmlTextWriterWriteDTDAttlist(xmlTextWriterPtr $writer, xmlCharP $name, xmlCharP $content --> int32) is native(LIB) {*};
sub xmlTextWriterWriteDTDElement(xmlTextWriterPtr $writer, xmlCharP $name, xmlCharP $content --> int32) is native(LIB) {*};
sub xmlTextWriterWriteDTDEntity(xmlTextWriterPtr $writer, int32 $pe, xmlCharP $name, xmlCharP $pubid, xmlCharP $sysid, xmlCharP $ndataid, xmlCharP $content --> int32) is native(LIB) {*};
sub xmlTextWriterWriteDTDExternalEntity(xmlTextWriterPtr $writer, int32 $pe, xmlCharP $name, xmlCharP $pubid, xmlCharP $sysid, xmlCharP $ndataid --> int32) is native(LIB) {*};
sub xmlTextWriterWriteDTDExternalEntityContents(xmlTextWriterPtr $writer, xmlCharP $pubid, xmlCharP $sysid, xmlCharP $ndataid --> int32) is native(LIB) {*};
sub xmlTextWriterWriteDTDInternalEntity(xmlTextWriterPtr $writer, int32 $pe, xmlCharP $name, xmlCharP $content --> int32) is native(LIB) {*};
sub xmlTextWriterWriteDTDNotation(xmlTextWriterPtr $writer, xmlCharP $name, xmlCharP $pubid, xmlCharP $sysid --> int32) is native(LIB) {*};
sub xmlTextWriterWriteElement(xmlTextWriterPtr $writer, xmlCharP $name, xmlCharP $content --> int32) is native(LIB) {*};
sub xmlTextWriterWriteElementNS(xmlTextWriterPtr $writer, xmlCharP $prefix, xmlCharP $name, xmlCharP $namespaceURI, xmlCharP $content --> int32) is native(LIB) {*};
sub xmlTextWriterWriteFormatAttribute(xmlTextWriterPtr $writer, xmlCharP $name, Str $format, ... $... --> int32) is native(LIB) {*};
sub xmlTextWriterWriteFormatAttributeNS(xmlTextWriterPtr $writer, xmlCharP $prefix, xmlCharP $name, xmlCharP $namespaceURI, Str $format, ... $... --> int32) is native(LIB) {*};
sub xmlTextWriterWriteFormatCDATA(xmlTextWriterPtr $writer, Str $format, ... $... --> int32) is native(LIB) {*};
sub xmlTextWriterWriteFormatComment(xmlTextWriterPtr $writer, Str $format, ... $... --> int32) is native(LIB) {*};
sub xmlTextWriterWriteFormatDTD(xmlTextWriterPtr $writer, xmlCharP $name, xmlCharP $pubid, xmlCharP $sysid, Str $format, ... $... --> int32) is native(LIB) {*};
sub xmlTextWriterWriteFormatDTDAttlist(xmlTextWriterPtr $writer, xmlCharP $name, Str $format, ... $... --> int32) is native(LIB) {*};
sub xmlTextWriterWriteFormatDTDElement(xmlTextWriterPtr $writer, xmlCharP $name, Str $format, ... $... --> int32) is native(LIB) {*};
sub xmlTextWriterWriteFormatDTDInternalEntity(xmlTextWriterPtr $writer, int32 $pe, xmlCharP $name, Str $format, ... $... --> int32) is native(LIB) {*};
sub xmlTextWriterWriteFormatElement(xmlTextWriterPtr $writer, xmlCharP $name, Str $format, ... $... --> int32) is native(LIB) {*};
sub xmlTextWriterWriteFormatElementNS(xmlTextWriterPtr $writer, xmlCharP $prefix, xmlCharP $name, xmlCharP $namespaceURI, Str $format, ... $... --> int32) is native(LIB) {*};
sub xmlTextWriterWriteFormatPI(xmlTextWriterPtr $writer, xmlCharP $target, Str $format, ... $... --> int32) is native(LIB) {*};
sub xmlTextWriterWriteFormatRaw(xmlTextWriterPtr $writer, Str $format, ... $... --> int32) is native(LIB) {*};
sub xmlTextWriterWriteFormatString(xmlTextWriterPtr $writer, Str $format, ... $... --> int32) is native(LIB) {*};
sub xmlTextWriterWritePI(xmlTextWriterPtr $writer, xmlCharP $target, xmlCharP $content --> int32) is native(LIB) {*};
sub xmlTextWriterWriteRaw(xmlTextWriterPtr $writer, xmlCharP $content --> int32) is native(LIB) {*};
sub xmlTextWriterWriteRawLen(xmlTextWriterPtr $writer, xmlCharP $content, int32 $len --> int32) is native(LIB) {*};
sub xmlTextWriterWriteString(xmlTextWriterPtr $writer, xmlCharP $content --> int32) is native(LIB) {*};
sub xmlTextWriterWriteVFormatAttribute(xmlTextWriterPtr $writer, xmlCharP $name, Str $format, va_list $argptr --> int32) is native(LIB) {*};
sub xmlTextWriterWriteVFormatAttributeNS(xmlTextWriterPtr $writer, xmlCharP $prefix, xmlCharP $name, xmlCharP $namespaceURI, Str $format, va_list $argptr --> int32) is native(LIB) {*};
sub xmlTextWriterWriteVFormatCDATA(xmlTextWriterPtr $writer, Str $format, va_list $argptr --> int32) is native(LIB) {*};
sub xmlTextWriterWriteVFormatComment(xmlTextWriterPtr $writer, Str $format, va_list $argptr --> int32) is native(LIB) {*};
sub xmlTextWriterWriteVFormatDTD(xmlTextWriterPtr $writer, xmlCharP $name, xmlCharP $pubid, xmlCharP $sysid, Str $format, va_list $argptr --> int32) is native(LIB) {*};
sub xmlTextWriterWriteVFormatDTDAttlist(xmlTextWriterPtr $writer, xmlCharP $name, Str $format, va_list $argptr --> int32) is native(LIB) {*};
sub xmlTextWriterWriteVFormatDTDElement(xmlTextWriterPtr $writer, xmlCharP $name, Str $format, va_list $argptr --> int32) is native(LIB) {*};
sub xmlTextWriterWriteVFormatDTDInternalEntity(xmlTextWriterPtr $writer, int32 $pe, xmlCharP $name, Str $format, va_list $argptr --> int32) is native(LIB) {*};
sub xmlTextWriterWriteVFormatElement(xmlTextWriterPtr $writer, xmlCharP $name, Str $format, va_list $argptr --> int32) is native(LIB) {*};
sub xmlTextWriterWriteVFormatElementNS(xmlTextWriterPtr $writer, xmlCharP $prefix, xmlCharP $name, xmlCharP $namespaceURI, Str $format, va_list $argptr --> int32) is native(LIB) {*};
sub xmlTextWriterWriteVFormatPI(xmlTextWriterPtr $writer, xmlCharP $target, Str $format, va_list $argptr --> int32) is native(LIB) {*};
sub xmlTextWriterWriteVFormatRaw(xmlTextWriterPtr $writer, Str $format, va_list $argptr --> int32) is native(LIB) {*};
sub xmlTextWriterWriteVFormatString(xmlTextWriterPtr $writer, Str $format, va_list $argptr --> int32) is native(LIB) {*};
