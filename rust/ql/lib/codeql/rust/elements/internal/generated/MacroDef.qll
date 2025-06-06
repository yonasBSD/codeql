// generated by codegen, do not edit
/**
 * This module provides the generated definition of `MacroDef`.
 * INTERNAL: Do not import directly.
 */

private import codeql.rust.elements.internal.generated.Synth
private import codeql.rust.elements.internal.generated.Raw
import codeql.rust.elements.Attr
import codeql.rust.elements.internal.ItemImpl::Impl as ItemImpl
import codeql.rust.elements.Name
import codeql.rust.elements.TokenTree
import codeql.rust.elements.Visibility

/**
 * INTERNAL: This module contains the fully generated definition of `MacroDef` and should not
 * be referenced directly.
 */
module Generated {
  /**
   * A Rust 2.0 style declarative macro definition.
   *
   * For example:
   * ```rust
   * pub macro vec_of_two($element:expr) {
   *     vec![$element, $element]
   * }
   * ```
   * INTERNAL: Do not reference the `Generated::MacroDef` class directly.
   * Use the subclass `MacroDef`, where the following predicates are available.
   */
  class MacroDef extends Synth::TMacroDef, ItemImpl::Item {
    override string getAPrimaryQlClass() { result = "MacroDef" }

    /**
     * Gets the arguments of this macro def, if it exists.
     */
    TokenTree getArgs() {
      result =
        Synth::convertTokenTreeFromRaw(Synth::convertMacroDefToRaw(this).(Raw::MacroDef).getArgs())
    }

    /**
     * Holds if `getArgs()` exists.
     */
    final predicate hasArgs() { exists(this.getArgs()) }

    /**
     * Gets the `index`th attr of this macro def (0-based).
     */
    Attr getAttr(int index) {
      result =
        Synth::convertAttrFromRaw(Synth::convertMacroDefToRaw(this).(Raw::MacroDef).getAttr(index))
    }

    /**
     * Gets any of the attrs of this macro def.
     */
    final Attr getAnAttr() { result = this.getAttr(_) }

    /**
     * Gets the number of attrs of this macro def.
     */
    final int getNumberOfAttrs() { result = count(int i | exists(this.getAttr(i))) }

    /**
     * Gets the body of this macro def, if it exists.
     */
    TokenTree getBody() {
      result =
        Synth::convertTokenTreeFromRaw(Synth::convertMacroDefToRaw(this).(Raw::MacroDef).getBody())
    }

    /**
     * Holds if `getBody()` exists.
     */
    final predicate hasBody() { exists(this.getBody()) }

    /**
     * Gets the name of this macro def, if it exists.
     */
    Name getName() {
      result =
        Synth::convertNameFromRaw(Synth::convertMacroDefToRaw(this).(Raw::MacroDef).getName())
    }

    /**
     * Holds if `getName()` exists.
     */
    final predicate hasName() { exists(this.getName()) }

    /**
     * Gets the visibility of this macro def, if it exists.
     */
    Visibility getVisibility() {
      result =
        Synth::convertVisibilityFromRaw(Synth::convertMacroDefToRaw(this)
              .(Raw::MacroDef)
              .getVisibility())
    }

    /**
     * Holds if `getVisibility()` exists.
     */
    final predicate hasVisibility() { exists(this.getVisibility()) }
  }
}
