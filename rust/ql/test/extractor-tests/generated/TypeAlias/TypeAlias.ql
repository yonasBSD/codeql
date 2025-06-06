// generated by codegen, do not edit
import codeql.rust.elements
import TestUtils

from
  TypeAlias x, string hasExtendedCanonicalPath, string hasCrateOrigin,
  string hasAttributeMacroExpansion, int getNumberOfAttrs, string hasGenericParamList,
  string isDefault, string hasName, string hasTypeRepr, string hasTypeBoundList,
  string hasVisibility, string hasWhereClause
where
  toBeTested(x) and
  not x.isUnknown() and
  (
    if x.hasExtendedCanonicalPath()
    then hasExtendedCanonicalPath = "yes"
    else hasExtendedCanonicalPath = "no"
  ) and
  (if x.hasCrateOrigin() then hasCrateOrigin = "yes" else hasCrateOrigin = "no") and
  (
    if x.hasAttributeMacroExpansion()
    then hasAttributeMacroExpansion = "yes"
    else hasAttributeMacroExpansion = "no"
  ) and
  getNumberOfAttrs = x.getNumberOfAttrs() and
  (if x.hasGenericParamList() then hasGenericParamList = "yes" else hasGenericParamList = "no") and
  (if x.isDefault() then isDefault = "yes" else isDefault = "no") and
  (if x.hasName() then hasName = "yes" else hasName = "no") and
  (if x.hasTypeRepr() then hasTypeRepr = "yes" else hasTypeRepr = "no") and
  (if x.hasTypeBoundList() then hasTypeBoundList = "yes" else hasTypeBoundList = "no") and
  (if x.hasVisibility() then hasVisibility = "yes" else hasVisibility = "no") and
  if x.hasWhereClause() then hasWhereClause = "yes" else hasWhereClause = "no"
select x, "hasExtendedCanonicalPath:", hasExtendedCanonicalPath, "hasCrateOrigin:", hasCrateOrigin,
  "hasAttributeMacroExpansion:", hasAttributeMacroExpansion, "getNumberOfAttrs:", getNumberOfAttrs,
  "hasGenericParamList:", hasGenericParamList, "isDefault:", isDefault, "hasName:", hasName,
  "hasTypeRepr:", hasTypeRepr, "hasTypeBoundList:", hasTypeBoundList, "hasVisibility:",
  hasVisibility, "hasWhereClause:", hasWhereClause
