// generated by codegen, do not edit
/**
 * This module provides the public class `DynTraitTypeRepr`.
 */

private import internal.DynTraitTypeReprImpl
import codeql.rust.elements.TypeBoundList
import codeql.rust.elements.TypeRepr

/**
 * A dynamic trait object type.
 *
 * For example:
 * ```rust
 * let x: &dyn Debug;
 * //      ^^^^^^^^^
 * ```
 */
final class DynTraitTypeRepr = Impl::DynTraitTypeRepr;
