// generated by codegen, do not edit
import codeql.rust.elements
import TestUtils

from
  ExternCrate x, string hasExtendedCanonicalPath, string hasCrateOrigin,
  string hasAttributeMacroExpansion, int getNumberOfAttrs, string hasIdentifier, string hasRename,
  string hasVisibility
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
  (if x.hasIdentifier() then hasIdentifier = "yes" else hasIdentifier = "no") and
  (if x.hasRename() then hasRename = "yes" else hasRename = "no") and
  if x.hasVisibility() then hasVisibility = "yes" else hasVisibility = "no"
select x, "hasExtendedCanonicalPath:", hasExtendedCanonicalPath, "hasCrateOrigin:", hasCrateOrigin,
  "hasAttributeMacroExpansion:", hasAttributeMacroExpansion, "getNumberOfAttrs:", getNumberOfAttrs,
  "hasIdentifier:", hasIdentifier, "hasRename:", hasRename, "hasVisibility:", hasVisibility
