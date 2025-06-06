// generated by codegen, do not edit
/**
 * This module provides the public class `AsmOptionsList`.
 */

private import internal.AsmOptionsListImpl
import codeql.rust.elements.AsmOption
import codeql.rust.elements.AsmPiece

/**
 * A list of options in an inline assembly block.
 *
 * For example:
 * ```rust
 * use core::arch::asm;
 * asm!("", options(nostack, nomem));
 * //              ^^^^^^^^^^^^^^^^
 * ```
 */
final class AsmOptionsList = Impl::AsmOptionsList;
