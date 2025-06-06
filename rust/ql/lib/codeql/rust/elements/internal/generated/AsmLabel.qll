// generated by codegen, do not edit
/**
 * This module provides the generated definition of `AsmLabel`.
 * INTERNAL: Do not import directly.
 */

private import codeql.rust.elements.internal.generated.Synth
private import codeql.rust.elements.internal.generated.Raw
import codeql.rust.elements.internal.AsmOperandImpl::Impl as AsmOperandImpl
import codeql.rust.elements.BlockExpr

/**
 * INTERNAL: This module contains the fully generated definition of `AsmLabel` and should not
 * be referenced directly.
 */
module Generated {
  /**
   * A label in an inline assembly block.
   *
   * For example:
   * ```rust
   * use core::arch::asm;
   * asm!(
   *     "jmp {}",
   *     label { println!("Jumped from asm!"); }
   * //  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
   * );
   * ```
   * INTERNAL: Do not reference the `Generated::AsmLabel` class directly.
   * Use the subclass `AsmLabel`, where the following predicates are available.
   */
  class AsmLabel extends Synth::TAsmLabel, AsmOperandImpl::AsmOperand {
    override string getAPrimaryQlClass() { result = "AsmLabel" }

    /**
     * Gets the block expression of this asm label, if it exists.
     */
    BlockExpr getBlockExpr() {
      result =
        Synth::convertBlockExprFromRaw(Synth::convertAsmLabelToRaw(this)
              .(Raw::AsmLabel)
              .getBlockExpr())
    }

    /**
     * Holds if `getBlockExpr()` exists.
     */
    final predicate hasBlockExpr() { exists(this.getBlockExpr()) }
  }
}
