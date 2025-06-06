// generated by codegen, do not edit
/**
 * This module provides the generated definition of `Name`.
 * INTERNAL: Do not import directly.
 */

private import codeql.rust.elements.internal.generated.Synth
private import codeql.rust.elements.internal.generated.Raw
import codeql.rust.elements.internal.AstNodeImpl::Impl as AstNodeImpl

/**
 * INTERNAL: This module contains the fully generated definition of `Name` and should not
 * be referenced directly.
 */
module Generated {
  /**
   * An identifier name.
   *
   * For example:
   * ```rust
   * let foo = 1;
   * //  ^^^
   * ```
   * INTERNAL: Do not reference the `Generated::Name` class directly.
   * Use the subclass `Name`, where the following predicates are available.
   */
  class Name extends Synth::TName, AstNodeImpl::AstNode {
    override string getAPrimaryQlClass() { result = "Name" }

    /**
     * Gets the text of this name, if it exists.
     */
    string getText() { result = Synth::convertNameToRaw(this).(Raw::Name).getText() }

    /**
     * Holds if `getText()` exists.
     */
    final predicate hasText() { exists(this.getText()) }
  }
}
