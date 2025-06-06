// generated by codegen, remove this comment if you wish to edit this file
/**
 * This module provides a hand-modifiable wrapper around the generated class `AsmLabel`.
 *
 * INTERNAL: Do not use.
 */

private import codeql.rust.elements.internal.generated.AsmLabel

/**
 * INTERNAL: This module contains the customizable definition of `AsmLabel` and should not
 * be referenced directly.
 */
module Impl {
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
   */
  class AsmLabel extends Generated::AsmLabel { }
}
