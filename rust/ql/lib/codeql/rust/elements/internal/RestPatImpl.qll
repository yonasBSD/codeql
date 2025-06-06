/**
 * This module provides a hand-modifiable wrapper around the generated class `RestPat`.
 *
 * INTERNAL: Do not use.
 */

private import codeql.rust.elements.internal.generated.RestPat

/**
 * INTERNAL: This module contains the customizable definition of `RestPat` and should not
 * be referenced directly.
 */
module Impl {
  // the following QLdoc is generated: if you need to edit it, do it in the schema file
  /**
   * A rest pattern (`..`) in a tuple, slice, or struct pattern.
   *
   * For example:
   * ```rust
   * let (a, .., z) = (1, 2, 3);
   * //      ^^
   * ```
   */
  class RestPat extends Generated::RestPat {
    override string toStringImpl() { result = this.toAbbreviatedString() }

    override string toAbbreviatedString() { result = ".." }
  }
}
