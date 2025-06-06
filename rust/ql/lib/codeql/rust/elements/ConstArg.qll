// generated by codegen, do not edit
/**
 * This module provides the public class `ConstArg`.
 */

private import internal.ConstArgImpl
import codeql.rust.elements.Expr
import codeql.rust.elements.GenericArg

/**
 * A constant argument in a generic argument list.
 *
 * For example:
 * ```rust
 * Foo::<3>
 * //    ^
 * ```
 */
final class ConstArg = Impl::ConstArg;
