/**
 * This module provides a hand-modifiable wrapper around the generated class `ParenExpr`.
 *
 * INTERNAL: Do not use.
 */

private import codeql.rust.elements.internal.generated.ParenExpr

/**
 * INTERNAL: This module contains the customizable definition of `ParenExpr` and should not
 * be referenced directly.
 */
module Impl {
  // the following QLdoc is generated: if you need to edit it, do it in the schema file
  /**
   * A parenthesized expression.
   *
   * For example:
   * ```rust
   * (x + y)
   * ```
   */
  class ParenExpr extends Generated::ParenExpr {
    override string toStringImpl() { result = "(" + this.getExpr().toAbbreviatedString() + ")" }
  }
}
