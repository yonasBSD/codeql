// generated by codegen, do not edit
/**
 * This module provides the generated definition of `ParenthesizedArgList`.
 * INTERNAL: Do not import directly.
 */

private import codeql.rust.elements.internal.generated.Synth
private import codeql.rust.elements.internal.generated.Raw
import codeql.rust.elements.internal.AstNodeImpl::Impl as AstNodeImpl
import codeql.rust.elements.TypeArg

/**
 * INTERNAL: This module contains the fully generated definition of `ParenthesizedArgList` and should not
 * be referenced directly.
 */
module Generated {
  /**
   * A parenthesized argument list as used in function traits.
   *
   * For example:
   * ```rust
   * fn call_with_42<F>(f: F) -> i32
   * where
   *     F: Fn(i32, String) -> i32,
   * //        ^^^^^^^^^^^
   * {
   *     f(42, "Don't panic".to_string())
   * }
   * ```
   * INTERNAL: Do not reference the `Generated::ParenthesizedArgList` class directly.
   * Use the subclass `ParenthesizedArgList`, where the following predicates are available.
   */
  class ParenthesizedArgList extends Synth::TParenthesizedArgList, AstNodeImpl::AstNode {
    override string getAPrimaryQlClass() { result = "ParenthesizedArgList" }

    /**
     * Gets the `index`th type argument of this parenthesized argument list (0-based).
     */
    TypeArg getTypeArg(int index) {
      result =
        Synth::convertTypeArgFromRaw(Synth::convertParenthesizedArgListToRaw(this)
              .(Raw::ParenthesizedArgList)
              .getTypeArg(index))
    }

    /**
     * Gets any of the type arguments of this parenthesized argument list.
     */
    final TypeArg getATypeArg() { result = this.getTypeArg(_) }

    /**
     * Gets the number of type arguments of this parenthesized argument list.
     */
    final int getNumberOfTypeArgs() { result = count(int i | exists(this.getTypeArg(i))) }
  }
}
