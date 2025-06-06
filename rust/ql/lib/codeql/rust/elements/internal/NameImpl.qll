/**
 * This module provides a hand-modifiable wrapper around the generated class `Name`.
 *
 * INTERNAL: Do not use.
 */

private import codeql.rust.elements.internal.generated.Name

/**
 * INTERNAL: This module contains the customizable definition of `Name` and should not
 * be referenced directly.
 */
module Impl {
  // the following QLdoc is generated: if you need to edit it, do it in the schema file
  /**
   * An identifier name.
   *
   * For example:
   * ```rust
   * let foo = 1;
   * //  ^^^
   * ```
   */
  class Name extends Generated::Name {
    override string toStringImpl() { result = this.getText() }
  }
}
