// generated by codegen, do not edit
/**
 * This module provides the generated definition of `FieldList`.
 * INTERNAL: Do not import directly.
 */

private import codeql.rust.elements.internal.generated.Synth
private import codeql.rust.elements.internal.generated.Raw
import codeql.rust.elements.internal.AstNodeImpl::Impl as AstNodeImpl

/**
 * INTERNAL: This module contains the fully generated definition of `FieldList` and should not
 * be referenced directly.
 */
module Generated {
  /**
   * A list of fields in a struct or enum variant.
   *
   * For example:
   * ```rust
   * struct S {x: i32, y: i32}
   * //       ^^^^^^^^^^^^^^^^
   * enum E {A(i32, i32)}
   * //     ^^^^^^^^^^^^^
   * ```
   * INTERNAL: Do not reference the `Generated::FieldList` class directly.
   * Use the subclass `FieldList`, where the following predicates are available.
   */
  class FieldList extends Synth::TFieldList, AstNodeImpl::AstNode { }
}
