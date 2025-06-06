/**
 * @name Unresolved Macro Calls
 * @description List all macro calls that were not resolved to a target.
 * @kind diagnostic
 * @id rust/diagnostics/unresolved-macro-calls
 */

import rust

from MacroCall mc
where mc.fromSource() and not mc.hasMacroCallExpansion()
select mc, "Macro call was not resolved to a target."
