// generated by codegen, do not edit
/**
 * This module provides the public class `ClosureBinder`.
 */

private import internal.ClosureBinderImpl
import codeql.rust.elements.AstNode
import codeql.rust.elements.GenericParamList

/**
 * A closure binder, specifying lifetime or type parameters for a closure.
 *
 * For example:
 * ```rust
 * let print_any = for<T: std::fmt::Debug> |x: T| {
 * //              ^^^^^^^^^^^^^^^^^^^^^^^
 *     println!("{:?}", x);
 * };
 *
 * print_any(42);
 * print_any("hello");
 * ```
 */
final class ClosureBinder = Impl::ClosureBinder;
