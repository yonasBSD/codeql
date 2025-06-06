// generated by codegen, do not edit
/**
 * This module provides the generated definition of `Element`.
 * INTERNAL: Do not import directly.
 */

private import codeql.rust.elements.internal.generated.Synth
private import codeql.rust.elements.internal.generated.Raw
import codeql.rust.elements.Element

private class ElementAlias = Element;

/**
 * INTERNAL: This module contains the fully generated definition of `Element` and should not
 * be referenced directly.
 */
module Generated {
  /**
   * INTERNAL: Do not reference the `Generated::Element` class directly.
   * Use the subclass `Element`, where the following predicates are available.
   */
  class Element extends Synth::TElement {
    /**
     * Gets the string representation of this element.
     */
    cached
    final string toString() {
      result = this.toStringImpl() and
      // recursion guard to prevent `toString` from being defined recursively
      (exists(any(Element e).toStringImpl()) implies any())
    }

    /**
     * INTERNAL: Do not use.
     *
     * Gets the string representation of this element.
     */
    abstract string toStringImpl();

    /**
     * Gets the name of a primary CodeQL class to which this element belongs.
     *
     * This is the most precise syntactic category to which they belong; for
     * example, `CallExpr` is a primary class, but `ApplyExpr` is not.
     *
     * There might be some corner cases when this returns multiple classes, or none.
     */
    string getAPrimaryQlClass() { none() } // overridden by subclasses

    /**
     * Gets a comma-separated list of the names of the primary CodeQL classes to which this element belongs.
     */
    final string getPrimaryQlClasses() { result = concat(this.getAPrimaryQlClass(), ",") }

    /**
     * Gets the most immediate element that should substitute this element in the explicit AST, if any.
     * Classes can override this to indicate this node should be in the "hidden" AST, mostly reserved
     * for conversions and syntactic sugar nodes like parentheses.
     */
    ElementAlias getResolveStep() { none() } // overridden by subclasses

    /**
     * Gets the element that should substitute this element in the explicit AST, applying `getResolveStep`
     * transitively.
     */
    final ElementAlias resolve() {
      not exists(this.getResolveStep()) and result = this
      or
      result = this.getResolveStep().resolve()
    }
  }
}
