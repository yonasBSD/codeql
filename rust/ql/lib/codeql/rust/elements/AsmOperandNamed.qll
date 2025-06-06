// generated by codegen, do not edit
/**
 * This module provides the public class `AsmOperandNamed`.
 */

private import internal.AsmOperandNamedImpl
import codeql.rust.elements.AsmOperand
import codeql.rust.elements.AsmPiece
import codeql.rust.elements.Name

/**
 * A named operand in an inline assembly block.
 *
 * For example:
 * ```rust
 * use core::arch::asm;
 * asm!("mov {0:x}, {input:x}", out(reg) x, input = in(reg) y);
 * //                           ^^^^^^^^^^^ ^^^^^^^^^^^^^^^^^
 * ```
 */
final class AsmOperandNamed = Impl::AsmOperandNamed;
