/**
 * This module provides a hand-modifiable wrapper around the generated class `NameRef`.
 *
 * INTERNAL: Do not use.
 */

private import codeql.rust.elements.internal.generated.NameRef

/**
 * INTERNAL: This module contains the customizable definition of `NameRef` and should not
 * be referenced directly.
 */
module Impl {
  // the following QLdoc is generated: if you need to edit it, do it in the schema file
  /**
   * A reference to a name.
   *
   * For example:
   * ```rust
   *   foo();
   * //^^^
   * ```
   */
  class NameRef extends Generated::NameRef {
    override string toStringImpl() { result = this.getText() }
  }
}
