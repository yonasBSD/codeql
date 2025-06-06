/**
 * This module provides a hand-modifiable wrapper around the generated class `Lifetime`.
 *
 * INTERNAL: Do not use.
 */

private import codeql.rust.elements.internal.generated.Lifetime

/**
 * INTERNAL: This module contains the customizable definition of `Lifetime` and should not
 * be referenced directly.
 */
module Impl {
  // the following QLdoc is generated: if you need to edit it, do it in the schema file
  /**
   * A lifetime annotation.
   *
   * For example:
   * ```rust
   * fn foo<'a>(x: &'a str) {}
   * //     ^^      ^^
   * ```
   */
  class Lifetime extends Generated::Lifetime {
    override string toStringImpl() {
      result = this.getText()
      or
      not this.hasText() and result = "'_"
    }
  }
}
