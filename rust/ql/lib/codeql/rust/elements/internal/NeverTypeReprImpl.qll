/**
 * This module provides a hand-modifiable wrapper around the generated class `NeverTypeRepr`.
 *
 * INTERNAL: Do not use.
 */

private import codeql.rust.elements.internal.generated.NeverTypeRepr

/**
 * INTERNAL: This module contains the customizable definition of `NeverTypeRepr` and should not
 * be referenced directly.
 */
module Impl {
  // the following QLdoc is generated: if you need to edit it, do it in the schema file
  /**
   * The never type `!`.
   *
   * For example:
   * ```rust
   * fn foo() -> ! { panic!() }
   * //          ^
   * ```
   */
  class NeverTypeRepr extends Generated::NeverTypeRepr {
    override string toStringImpl() { result = this.toAbbreviatedString() }

    override string toAbbreviatedString() { result = "!" }
  }
}
