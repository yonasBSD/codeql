/**
 * This module provides a hand-modifiable wrapper around the generated class `PathSegment`.
 *
 * INTERNAL: Do not use.
 */

private import codeql.rust.elements.internal.generated.PathSegment

/**
 * INTERNAL: This module contains the customizable definition of `PathSegment` and should not
 * be referenced directly.
 */
module Impl {
  // the following QLdoc is generated: if you need to edit it, do it in the schema file
  /**
   * A path segment, which is one part of a whole path.
   * For example:
   * - `HashMap`
   * - `HashMap<K, V>`
   * - `Fn(i32) -> i32`
   * - `widgets(..)`
   * - `<T as Iterator>`
   */
  class PathSegment extends Generated::PathSegment {
    override string toStringImpl() { result = this.toAbbreviatedString() }

    override string toAbbreviatedString() {
      result = strictconcat(int i | | this.toAbbreviatedStringPart(i), "::" order by i)
    }

    private string toAbbreviatedStringPart(int index) {
      index = 0 and
      if this.hasTypeRepr() then result = "<...>" else result = this.getIdentifier().getText()
      or
      index = 1 and result = this.getGenericArgList().toAbbreviatedString()
    }
  }
}
