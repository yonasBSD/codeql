/**
 * This module provides a hand-modifiable wrapper around the generated class `Impl`.
 *
 * INTERNAL: Do not use.
 */

private import codeql.rust.elements.internal.generated.Impl

/**
 * INTERNAL: This module contains the customizable definition of `Impl` and should not
 * be referenced directly.
 */
module Impl {
  // the following QLdoc is generated: if you need to edit it, do it in the schema file
  /**
   * An `impl`` block.
   *
   * For example:
   * ```rust
   * impl MyTrait for MyType {
   *     fn foo(&self) {}
   * }
   * ```
   */
  class Impl extends Generated::Impl {
    override string toStringImpl() {
      exists(string trait |
        (
          trait = this.getTrait().toAbbreviatedString() + " for "
          or
          not this.hasTrait() and trait = ""
        ) and
        result = "impl " + trait + this.getSelfTy().toAbbreviatedString() + " { ... }"
      )
    }
  }
}
