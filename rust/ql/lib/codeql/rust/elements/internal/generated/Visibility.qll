// generated by codegen, do not edit
/**
 * This module provides the generated definition of `Visibility`.
 * INTERNAL: Do not import directly.
 */

private import codeql.rust.elements.internal.generated.Synth
private import codeql.rust.elements.internal.generated.Raw
import codeql.rust.elements.internal.AstNodeImpl::Impl as AstNodeImpl
import codeql.rust.elements.Path

/**
 * INTERNAL: This module contains the fully generated definition of `Visibility` and should not
 * be referenced directly.
 */
module Generated {
  /**
   * A visibility modifier.
   *
   * For example:
   * ```rust
   *   pub struct S;
   * //^^^
   * ```
   * INTERNAL: Do not reference the `Generated::Visibility` class directly.
   * Use the subclass `Visibility`, where the following predicates are available.
   */
  class Visibility extends Synth::TVisibility, AstNodeImpl::AstNode {
    override string getAPrimaryQlClass() { result = "Visibility" }

    /**
     * Gets the path of this visibility, if it exists.
     */
    Path getPath() {
      result =
        Synth::convertPathFromRaw(Synth::convertVisibilityToRaw(this).(Raw::Visibility).getPath())
    }

    /**
     * Holds if `getPath()` exists.
     */
    final predicate hasPath() { exists(this.getPath()) }
  }
}
