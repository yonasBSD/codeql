// generated by codegen, do not edit
/**
 * This module provides the generated definition of `ParenTypeRepr`.
 * INTERNAL: Do not import directly.
 */

private import codeql.rust.elements.internal.generated.Synth
private import codeql.rust.elements.internal.generated.Raw
import codeql.rust.elements.TypeRepr
import codeql.rust.elements.internal.TypeReprImpl::Impl as TypeReprImpl

/**
 * INTERNAL: This module contains the fully generated definition of `ParenTypeRepr` and should not
 * be referenced directly.
 */
module Generated {
  /**
   * A parenthesized type.
   *
   * For example:
   * ```rust
   * let x: (i32);
   * //     ^^^^^
   * ```
   * INTERNAL: Do not reference the `Generated::ParenTypeRepr` class directly.
   * Use the subclass `ParenTypeRepr`, where the following predicates are available.
   */
  class ParenTypeRepr extends Synth::TParenTypeRepr, TypeReprImpl::TypeRepr {
    override string getAPrimaryQlClass() { result = "ParenTypeRepr" }

    /**
     * Gets the type representation of this paren type representation, if it exists.
     */
    TypeRepr getTypeRepr() {
      result =
        Synth::convertTypeReprFromRaw(Synth::convertParenTypeReprToRaw(this)
              .(Raw::ParenTypeRepr)
              .getTypeRepr())
    }

    /**
     * Holds if `getTypeRepr()` exists.
     */
    final predicate hasTypeRepr() { exists(this.getTypeRepr()) }
  }
}
