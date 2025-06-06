// generated by codegen, do not edit
/**
 * This module provides the generated definition of `UseBoundGenericArgs`.
 * INTERNAL: Do not import directly.
 */

private import codeql.rust.elements.internal.generated.Synth
private import codeql.rust.elements.internal.generated.Raw
import codeql.rust.elements.internal.AstNodeImpl::Impl as AstNodeImpl
import codeql.rust.elements.UseBoundGenericArg

/**
 * INTERNAL: This module contains the fully generated definition of `UseBoundGenericArgs` and should not
 * be referenced directly.
 */
module Generated {
  /**
   * A use<..> bound to control which generic parameters are captured by an impl Trait return type.
   *
   * For example:
   * ```rust
   * pub fn hello<'a, T, const N: usize>() -> impl Sized + use<'a, T, N> {}
   * //                                                        ^^^^^^^^
   * ```
   * INTERNAL: Do not reference the `Generated::UseBoundGenericArgs` class directly.
   * Use the subclass `UseBoundGenericArgs`, where the following predicates are available.
   */
  class UseBoundGenericArgs extends Synth::TUseBoundGenericArgs, AstNodeImpl::AstNode {
    override string getAPrimaryQlClass() { result = "UseBoundGenericArgs" }

    /**
     * Gets the `index`th use bound generic argument of this use bound generic arguments (0-based).
     */
    UseBoundGenericArg getUseBoundGenericArg(int index) {
      result =
        Synth::convertUseBoundGenericArgFromRaw(Synth::convertUseBoundGenericArgsToRaw(this)
              .(Raw::UseBoundGenericArgs)
              .getUseBoundGenericArg(index))
    }

    /**
     * Gets any of the use bound generic arguments of this use bound generic arguments.
     */
    final UseBoundGenericArg getAUseBoundGenericArg() { result = this.getUseBoundGenericArg(_) }

    /**
     * Gets the number of use bound generic arguments of this use bound generic arguments.
     */
    final int getNumberOfUseBoundGenericArgs() {
      result = count(int i | exists(this.getUseBoundGenericArg(i)))
    }
  }
}
