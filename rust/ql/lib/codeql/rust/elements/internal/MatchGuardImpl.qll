// generated by codegen, remove this comment if you wish to edit this file
/**
 * This module provides a hand-modifiable wrapper around the generated class `MatchGuard`.
 *
 * INTERNAL: Do not use.
 */

private import codeql.rust.elements.internal.generated.MatchGuard

/**
 * INTERNAL: This module contains the customizable definition of `MatchGuard` and should not
 * be referenced directly.
 */
module Impl {
  /**
   * A guard condition in a match arm.
   *
   * For example:
   * ```rust
   * match x {
   *     y if y > 0 => "positive",
   * //    ^^^^^^^
   *     _ => "non-positive",
   * }
   * ```
   */
  class MatchGuard extends Generated::MatchGuard { }
}
