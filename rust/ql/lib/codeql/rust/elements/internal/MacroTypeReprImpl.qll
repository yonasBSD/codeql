// generated by codegen, remove this comment if you wish to edit this file
/**
 * This module provides a hand-modifiable wrapper around the generated class `MacroTypeRepr`.
 *
 * INTERNAL: Do not use.
 */

private import codeql.rust.elements.internal.generated.MacroTypeRepr

/**
 * INTERNAL: This module contains the customizable definition of `MacroTypeRepr` and should not
 * be referenced directly.
 */
module Impl {
  /**
   * A type produced by a macro.
   *
   * For example:
   * ```rust
   * macro_rules! macro_type {
   *     () => { i32 };
   * }
   * type T = macro_type!();
   * //       ^^^^^^^^^^^^^
   * ```
   */
  class MacroTypeRepr extends Generated::MacroTypeRepr { }
}
