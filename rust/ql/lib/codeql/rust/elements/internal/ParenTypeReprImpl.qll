/**
 * This module provides a hand-modifiable wrapper around the generated class `ParenTypeRepr`.
 *
 * INTERNAL: Do not use.
 */

private import codeql.rust.elements.internal.generated.ParenTypeRepr

/**
 * INTERNAL: This module contains the customizable definition of `ParenTypeRepr` and should not
 * be referenced directly.
 */
module Impl {
  // the following QLdoc is generated: if you need to edit it, do it in the schema file
  /**
   * A parenthesized type.
   *
   * For example:
   * ```rust
   * let x: (i32);
   * //     ^^^^^
   * ```
   */
  class ParenTypeRepr extends Generated::ParenTypeRepr {
    override string toStringImpl() { result = "(" + this.getTypeRepr().toAbbreviatedString() + ")" }
  }
}
