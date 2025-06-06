/**
 * This module provides a hand-modifiable wrapper around the generated class `ForExpr`.
 *
 * INTERNAL: Do not use.
 */

private import codeql.rust.elements.internal.generated.ForExpr

/**
 * INTERNAL: This module contains the customizable definition of `ForExpr` and should not
 * be referenced directly.
 */
module Impl {
  // the following QLdoc is generated: if you need to edit it, do it in the schema file
  /**
   * A for loop expression.
   *
   * For example:
   * ```rust
   * for x in 0..10 {
   *     println!("{}", x);
   * }
   * ```
   */
  class ForExpr extends Generated::ForExpr {
    override string toStringPrefix() {
      result = "for " + this.getPat().toAbbreviatedString() + " in ..."
    }
  }
}
