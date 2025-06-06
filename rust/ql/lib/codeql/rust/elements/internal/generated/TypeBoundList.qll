// generated by codegen, do not edit
/**
 * This module provides the generated definition of `TypeBoundList`.
 * INTERNAL: Do not import directly.
 */

private import codeql.rust.elements.internal.generated.Synth
private import codeql.rust.elements.internal.generated.Raw
import codeql.rust.elements.internal.AstNodeImpl::Impl as AstNodeImpl
import codeql.rust.elements.TypeBound

/**
 * INTERNAL: This module contains the fully generated definition of `TypeBoundList` and should not
 * be referenced directly.
 */
module Generated {
  /**
   * A list of type bounds.
   *
   * For example:
   * ```rust
   * fn foo<T: Debug + Clone>(t: T) {}
   * //        ^^^^^^^^^^^^^
   * ```
   * INTERNAL: Do not reference the `Generated::TypeBoundList` class directly.
   * Use the subclass `TypeBoundList`, where the following predicates are available.
   */
  class TypeBoundList extends Synth::TTypeBoundList, AstNodeImpl::AstNode {
    override string getAPrimaryQlClass() { result = "TypeBoundList" }

    /**
     * Gets the `index`th bound of this type bound list (0-based).
     */
    TypeBound getBound(int index) {
      result =
        Synth::convertTypeBoundFromRaw(Synth::convertTypeBoundListToRaw(this)
              .(Raw::TypeBoundList)
              .getBound(index))
    }

    /**
     * Gets any of the bounds of this type bound list.
     */
    final TypeBound getABound() { result = this.getBound(_) }

    /**
     * Gets the number of bounds of this type bound list.
     */
    final int getNumberOfBounds() { result = count(int i | exists(this.getBound(i))) }
  }
}
