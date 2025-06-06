// generated by codegen, do not edit
/**
 * This module provides the public class `Rename`.
 */

private import internal.RenameImpl
import codeql.rust.elements.AstNode
import codeql.rust.elements.Name

/**
 * A rename in a use declaration.
 *
 * For example:
 * ```rust
 * use foo as bar;
 * //      ^^^^^^
 * ```
 */
final class Rename = Impl::Rename;
