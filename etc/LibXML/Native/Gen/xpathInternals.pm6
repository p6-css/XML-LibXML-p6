use v6;
#  -- DO NOT EDIT --
# generated by: etc/generator.p6 

unit module LibXML::Native::Gen::xpathInternals;
# internal interfaces for XML Path Language implementation:
#    internal interfaces for XML Path Language implementation used to build new modules on top of XPath like XPointer and XSLT 
use LibXML::Native::Defs :LIB, :XmlCharP;

sub valuePop(xmlXPathParserContextPtr $ctxt --> xmlXPathObjectPtr) is native(LIB) {*};
sub valuePush(xmlXPathParserContextPtr $ctxt, xmlXPathObjectPtr $value --> int32) is native(LIB) {*};
sub xmlXPathAddValues(xmlXPathParserContextPtr $ctxt) is native(LIB) {*};
sub xmlXPathBooleanFunction(xmlXPathParserContextPtr $ctxt, int32 $nargs) is native(LIB) {*};
sub xmlXPathCeilingFunction(xmlXPathParserContextPtr $ctxt, int32 $nargs) is native(LIB) {*};
sub xmlXPathCompareValues(xmlXPathParserContextPtr $ctxt, int32 $inf, int32 $strict --> int32) is native(LIB) {*};
sub xmlXPathConcatFunction(xmlXPathParserContextPtr $ctxt, int32 $nargs) is native(LIB) {*};
sub xmlXPathContainsFunction(xmlXPathParserContextPtr $ctxt, int32 $nargs) is native(LIB) {*};
sub xmlXPathCountFunction(xmlXPathParserContextPtr $ctxt, int32 $nargs) is native(LIB) {*};
sub xmlXPathDebugDumpCompExpr(FILE * $output, xmlXPathCompExprPtr $comp, int32 $depth) is native(LIB) {*};
sub xmlXPathDebugDumpObject(FILE * $output, xmlXPathObjectPtr $cur, int32 $depth) is native(LIB) {*};
sub xmlXPathDifference(xmlNodeSetPtr $nodes1, xmlNodeSetPtr $nodes2 --> xmlNodeSetPtr) is native(LIB) {*};
sub xmlXPathDistinct(xmlNodeSetPtr $nodes --> xmlNodeSetPtr) is native(LIB) {*};
sub xmlXPathDistinctSorted(xmlNodeSetPtr $nodes --> xmlNodeSetPtr) is native(LIB) {*};
sub xmlXPathDivValues(xmlXPathParserContextPtr $ctxt) is native(LIB) {*};
sub xmlXPathEqualValues(xmlXPathParserContextPtr $ctxt --> int32) is native(LIB) {*};
sub xmlXPathErr(xmlXPathParserContextPtr $ctxt, int32 $error) is native(LIB) {*};
sub xmlXPathEvalExpr(xmlXPathParserContextPtr $ctxt) is native(LIB) {*};
sub xmlXPathEvaluatePredicateResult(xmlXPathParserContextPtr $ctxt, xmlXPathObjectPtr $res --> int32) is native(LIB) {*};
sub xmlXPathFalseFunction(xmlXPathParserContextPtr $ctxt, int32 $nargs) is native(LIB) {*};
sub xmlXPathFloorFunction(xmlXPathParserContextPtr $ctxt, int32 $nargs) is native(LIB) {*};
sub xmlXPathFreeParserContext(xmlXPathParserContextPtr $ctxt) is native(LIB) {*};
sub xmlXPathFunctionLookup(xmlXPathContextPtr $ctxt, xmlCharP $name --> xmlXPathFunction) is native(LIB) {*};
sub xmlXPathFunctionLookupNS(xmlXPathContextPtr $ctxt, xmlCharP $name, xmlCharP $ns_uri --> xmlXPathFunction) is native(LIB) {*};
sub xmlXPathHasSameNodes(xmlNodeSetPtr $nodes1, xmlNodeSetPtr $nodes2 --> int32) is native(LIB) {*};
sub xmlXPathIdFunction(xmlXPathParserContextPtr $ctxt, int32 $nargs) is native(LIB) {*};
sub xmlXPathIntersection(xmlNodeSetPtr $nodes1, xmlNodeSetPtr $nodes2 --> xmlNodeSetPtr) is native(LIB) {*};
sub xmlXPathIsNodeType(xmlCharP $name --> int32) is native(LIB) {*};
sub xmlXPathLangFunction(xmlXPathParserContextPtr $ctxt, int32 $nargs) is native(LIB) {*};
sub xmlXPathLastFunction(xmlXPathParserContextPtr $ctxt, int32 $nargs) is native(LIB) {*};
sub xmlXPathLeading(xmlNodeSetPtr $nodes1, xmlNodeSetPtr $nodes2 --> xmlNodeSetPtr) is native(LIB) {*};
sub xmlXPathLeadingSorted(xmlNodeSetPtr $nodes1, xmlNodeSetPtr $nodes2 --> xmlNodeSetPtr) is native(LIB) {*};
sub xmlXPathLocalNameFunction(xmlXPathParserContextPtr $ctxt, int32 $nargs) is native(LIB) {*};
sub xmlXPathModValues(xmlXPathParserContextPtr $ctxt) is native(LIB) {*};
sub xmlXPathMultValues(xmlXPathParserContextPtr $ctxt) is native(LIB) {*};
sub xmlXPathNamespaceURIFunction(xmlXPathParserContextPtr $ctxt, int32 $nargs) is native(LIB) {*};
sub xmlXPathNewBoolean(int32 $val --> xmlXPathObjectPtr) is native(LIB) {*};
sub xmlXPathNewCString(Str $val --> xmlXPathObjectPtr) is native(LIB) {*};
sub xmlXPathNewFloat(num64 $val --> xmlXPathObjectPtr) is native(LIB) {*};
sub xmlXPathNewNodeSet(xmlNodePtr $val --> xmlXPathObjectPtr) is native(LIB) {*};
sub xmlXPathNewNodeSetList(xmlNodeSetPtr $val --> xmlXPathObjectPtr) is native(LIB) {*};
sub xmlXPathNewParserContext(xmlCharP $str, xmlXPathContextPtr $ctxt --> xmlXPathParserContextPtr) is native(LIB) {*};
sub xmlXPathNewString(xmlCharP $val --> xmlXPathObjectPtr) is native(LIB) {*};
sub xmlXPathNewValueTree(xmlNodePtr $val --> xmlXPathObjectPtr) is native(LIB) {*};
sub xmlXPathNextAncestor(xmlXPathParserContextPtr $ctxt, xmlNodePtr $cur --> xmlNodePtr) is native(LIB) {*};
sub xmlXPathNextAncestorOrSelf(xmlXPathParserContextPtr $ctxt, xmlNodePtr $cur --> xmlNodePtr) is native(LIB) {*};
sub xmlXPathNextAttribute(xmlXPathParserContextPtr $ctxt, xmlNodePtr $cur --> xmlNodePtr) is native(LIB) {*};
sub xmlXPathNextChild(xmlXPathParserContextPtr $ctxt, xmlNodePtr $cur --> xmlNodePtr) is native(LIB) {*};
sub xmlXPathNextDescendant(xmlXPathParserContextPtr $ctxt, xmlNodePtr $cur --> xmlNodePtr) is native(LIB) {*};
sub xmlXPathNextDescendantOrSelf(xmlXPathParserContextPtr $ctxt, xmlNodePtr $cur --> xmlNodePtr) is native(LIB) {*};
sub xmlXPathNextFollowing(xmlXPathParserContextPtr $ctxt, xmlNodePtr $cur --> xmlNodePtr) is native(LIB) {*};
sub xmlXPathNextFollowingSibling(xmlXPathParserContextPtr $ctxt, xmlNodePtr $cur --> xmlNodePtr) is native(LIB) {*};
sub xmlXPathNextNamespace(xmlXPathParserContextPtr $ctxt, xmlNodePtr $cur --> xmlNodePtr) is native(LIB) {*};
sub xmlXPathNextParent(xmlXPathParserContextPtr $ctxt, xmlNodePtr $cur --> xmlNodePtr) is native(LIB) {*};
sub xmlXPathNextPreceding(xmlXPathParserContextPtr $ctxt, xmlNodePtr $cur --> xmlNodePtr) is native(LIB) {*};
sub xmlXPathNextPrecedingSibling(xmlXPathParserContextPtr $ctxt, xmlNodePtr $cur --> xmlNodePtr) is native(LIB) {*};
sub xmlXPathNextSelf(xmlXPathParserContextPtr $ctxt, xmlNodePtr $cur --> xmlNodePtr) is native(LIB) {*};
sub xmlXPathNodeLeading(xmlNodeSetPtr $nodes, xmlNodePtr $node --> xmlNodeSetPtr) is native(LIB) {*};
sub xmlXPathNodeLeadingSorted(xmlNodeSetPtr $nodes, xmlNodePtr $node --> xmlNodeSetPtr) is native(LIB) {*};
sub xmlXPathNodeSetAdd(xmlNodeSetPtr $cur, xmlNodePtr $val --> int32) is native(LIB) {*};
sub xmlXPathNodeSetAddNs(xmlNodeSetPtr $cur, xmlNodePtr $node, xmlNsPtr $ns --> int32) is native(LIB) {*};
sub xmlXPathNodeSetAddUnique(xmlNodeSetPtr $cur, xmlNodePtr $val --> int32) is native(LIB) {*};
sub xmlXPathNodeSetContains(xmlNodeSetPtr $cur, xmlNodePtr $val --> int32) is native(LIB) {*};
sub xmlXPathNodeSetDel(xmlNodeSetPtr $cur, xmlNodePtr $val) is native(LIB) {*};
sub xmlXPathNodeSetFreeNs(xmlNsPtr $ns) is native(LIB) {*};
sub xmlXPathNodeSetMerge(xmlNodeSetPtr $val1, xmlNodeSetPtr $val2 --> xmlNodeSetPtr) is native(LIB) {*};
sub xmlXPathNodeSetRemove(xmlNodeSetPtr $cur, int32 $val) is native(LIB) {*};
sub xmlXPathNodeSetSort(xmlNodeSetPtr $set) is native(LIB) {*};
sub xmlXPathNodeTrailing(xmlNodeSetPtr $nodes, xmlNodePtr $node --> xmlNodeSetPtr) is native(LIB) {*};
sub xmlXPathNodeTrailingSorted(xmlNodeSetPtr $nodes, xmlNodePtr $node --> xmlNodeSetPtr) is native(LIB) {*};
sub xmlXPathNormalizeFunction(xmlXPathParserContextPtr $ctxt, int32 $nargs) is native(LIB) {*};
sub xmlXPathNotEqualValues(xmlXPathParserContextPtr $ctxt --> int32) is native(LIB) {*};
sub xmlXPathNotFunction(xmlXPathParserContextPtr $ctxt, int32 $nargs) is native(LIB) {*};
sub xmlXPathNsLookup(xmlXPathContextPtr $ctxt, xmlCharP $prefix --> xmlCharP) is native(LIB) {*};
sub xmlXPathNumberFunction(xmlXPathParserContextPtr $ctxt, int32 $nargs) is native(LIB) {*};
sub xmlXPathParseNCName(xmlXPathParserContextPtr $ctxt --> xmlCharP) is native(LIB) {*};
sub xmlXPathParseName(xmlXPathParserContextPtr $ctxt --> xmlCharP) is native(LIB) {*};
sub xmlXPathPopBoolean(xmlXPathParserContextPtr $ctxt --> int32) is native(LIB) {*};
sub xmlXPathPopExternal(xmlXPathParserContextPtr $ctxt --> Pointer) is native(LIB) {*};
sub xmlXPathPopNodeSet(xmlXPathParserContextPtr $ctxt --> xmlNodeSetPtr) is native(LIB) {*};
sub xmlXPathPopNumber(xmlXPathParserContextPtr $ctxt --> num64) is native(LIB) {*};
sub xmlXPathPopString(xmlXPathParserContextPtr $ctxt --> xmlCharP) is native(LIB) {*};
sub xmlXPathPositionFunction(xmlXPathParserContextPtr $ctxt, int32 $nargs) is native(LIB) {*};
sub xmlXPathRegisterAllFunctions(xmlXPathContextPtr $ctxt) is native(LIB) {*};
sub xmlXPathRegisterFunc(xmlXPathContextPtr $ctxt, xmlCharP $name, xmlXPathFunction $f --> int32) is native(LIB) {*};
sub xmlXPathRegisterFuncLookup(xmlXPathContextPtr $ctxt, xmlXPathFuncLookupFunc $f, Pointer $funcCtxt) is native(LIB) {*};
sub xmlXPathRegisterFuncNS(xmlXPathContextPtr $ctxt, xmlCharP $name, xmlCharP $ns_uri, xmlXPathFunction $f --> int32) is native(LIB) {*};
sub xmlXPathRegisterNs(xmlXPathContextPtr $ctxt, xmlCharP $prefix, xmlCharP $ns_uri --> int32) is native(LIB) {*};
sub xmlXPathRegisterVariable(xmlXPathContextPtr $ctxt, xmlCharP $name, xmlXPathObjectPtr $value --> int32) is native(LIB) {*};
sub xmlXPathRegisterVariableLookup(xmlXPathContextPtr $ctxt, xmlXPathVariableLookupFunc $f, Pointer $data) is native(LIB) {*};
sub xmlXPathRegisterVariableNS(xmlXPathContextPtr $ctxt, xmlCharP $name, xmlCharP $ns_uri, xmlXPathObjectPtr $value --> int32) is native(LIB) {*};
sub xmlXPathRegisteredFuncsCleanup(xmlXPathContextPtr $ctxt) is native(LIB) {*};
sub xmlXPathRegisteredNsCleanup(xmlXPathContextPtr $ctxt) is native(LIB) {*};
sub xmlXPathRegisteredVariablesCleanup(xmlXPathContextPtr $ctxt) is native(LIB) {*};
sub xmlXPathRoot(xmlXPathParserContextPtr $ctxt) is native(LIB) {*};
sub xmlXPathRoundFunction(xmlXPathParserContextPtr $ctxt, int32 $nargs) is native(LIB) {*};
sub xmlXPathStartsWithFunction(xmlXPathParserContextPtr $ctxt, int32 $nargs) is native(LIB) {*};
sub xmlXPathStringEvalNumber(xmlCharP $str --> num64) is native(LIB) {*};
sub xmlXPathStringFunction(xmlXPathParserContextPtr $ctxt, int32 $nargs) is native(LIB) {*};
sub xmlXPathStringLengthFunction(xmlXPathParserContextPtr $ctxt, int32 $nargs) is native(LIB) {*};
sub xmlXPathSubValues(xmlXPathParserContextPtr $ctxt) is native(LIB) {*};
sub xmlXPathSubstringAfterFunction(xmlXPathParserContextPtr $ctxt, int32 $nargs) is native(LIB) {*};
sub xmlXPathSubstringBeforeFunction(xmlXPathParserContextPtr $ctxt, int32 $nargs) is native(LIB) {*};
sub xmlXPathSubstringFunction(xmlXPathParserContextPtr $ctxt, int32 $nargs) is native(LIB) {*};
sub xmlXPathSumFunction(xmlXPathParserContextPtr $ctxt, int32 $nargs) is native(LIB) {*};
sub xmlXPathTrailing(xmlNodeSetPtr $nodes1, xmlNodeSetPtr $nodes2 --> xmlNodeSetPtr) is native(LIB) {*};
sub xmlXPathTrailingSorted(xmlNodeSetPtr $nodes1, xmlNodeSetPtr $nodes2 --> xmlNodeSetPtr) is native(LIB) {*};
sub xmlXPathTranslateFunction(xmlXPathParserContextPtr $ctxt, int32 $nargs) is native(LIB) {*};
sub xmlXPathTrueFunction(xmlXPathParserContextPtr $ctxt, int32 $nargs) is native(LIB) {*};
sub xmlXPathValueFlipSign(xmlXPathParserContextPtr $ctxt) is native(LIB) {*};
sub xmlXPathVariableLookup(xmlXPathContextPtr $ctxt, xmlCharP $name --> xmlXPathObjectPtr) is native(LIB) {*};
sub xmlXPathVariableLookupNS(xmlXPathContextPtr $ctxt, xmlCharP $name, xmlCharP $ns_uri --> xmlXPathObjectPtr) is native(LIB) {*};
sub xmlXPathWrapCString(Str $val --> xmlXPathObjectPtr) is native(LIB) {*};
sub xmlXPathWrapExternal(Pointer $val --> xmlXPathObjectPtr) is native(LIB) {*};
sub xmlXPathWrapNodeSet(xmlNodeSetPtr $val --> xmlXPathObjectPtr) is native(LIB) {*};
sub xmlXPathWrapString(xmlCharP $val --> xmlXPathObjectPtr) is native(LIB) {*};
sub xmlXPatherror(xmlXPathParserContextPtr $ctxt, Str $file, int32 $line, int32 $no) is native(LIB) {*};
