// generated by codegen, do not edit
/**
 * This module provides the generated definition of `StructFieldList`.
 * INTERNAL: Do not import directly.
 */

private import codeql.rust.elements.internal.generated.Synth
private import codeql.rust.elements.internal.generated.Raw
import codeql.rust.elements.internal.FieldListImpl::Impl as FieldListImpl
import codeql.rust.elements.StructField

/**
 * INTERNAL: This module contains the fully generated definition of `StructFieldList` and should not
 * be referenced directly.
 */
module Generated {
  /**
   * A list of fields in a struct declaration.
   *
   * For example:
   * ```rust
   * struct S { x: i32, y: i32 }
   * //         ^^^^^^^^^^^^^^^
   * ```
   * INTERNAL: Do not reference the `Generated::StructFieldList` class directly.
   * Use the subclass `StructFieldList`, where the following predicates are available.
   */
  class StructFieldList extends Synth::TStructFieldList, FieldListImpl::FieldList {
    override string getAPrimaryQlClass() { result = "StructFieldList" }

    /**
     * Gets the `index`th field of this struct field list (0-based).
     */
    StructField getField(int index) {
      result =
        Synth::convertStructFieldFromRaw(Synth::convertStructFieldListToRaw(this)
              .(Raw::StructFieldList)
              .getField(index))
    }

    /**
     * Gets any of the fields of this struct field list.
     */
    final StructField getAField() { result = this.getField(_) }

    /**
     * Gets the number of fields of this struct field list.
     */
    final int getNumberOfFields() { result = count(int i | exists(this.getField(i))) }
  }
}
