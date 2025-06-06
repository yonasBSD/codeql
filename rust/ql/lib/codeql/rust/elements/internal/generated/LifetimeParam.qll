// generated by codegen, do not edit
/**
 * This module provides the generated definition of `LifetimeParam`.
 * INTERNAL: Do not import directly.
 */

private import codeql.rust.elements.internal.generated.Synth
private import codeql.rust.elements.internal.generated.Raw
import codeql.rust.elements.Attr
import codeql.rust.elements.internal.GenericParamImpl::Impl as GenericParamImpl
import codeql.rust.elements.Lifetime
import codeql.rust.elements.TypeBoundList

/**
 * INTERNAL: This module contains the fully generated definition of `LifetimeParam` and should not
 * be referenced directly.
 */
module Generated {
  /**
   * A lifetime parameter in a generic parameter list.
   *
   * For example:
   * ```rust
   * fn foo<'a>(x: &'a str) {}
   * //     ^^
   * ```
   * INTERNAL: Do not reference the `Generated::LifetimeParam` class directly.
   * Use the subclass `LifetimeParam`, where the following predicates are available.
   */
  class LifetimeParam extends Synth::TLifetimeParam, GenericParamImpl::GenericParam {
    override string getAPrimaryQlClass() { result = "LifetimeParam" }

    /**
     * Gets the `index`th attr of this lifetime parameter (0-based).
     */
    Attr getAttr(int index) {
      result =
        Synth::convertAttrFromRaw(Synth::convertLifetimeParamToRaw(this)
              .(Raw::LifetimeParam)
              .getAttr(index))
    }

    /**
     * Gets any of the attrs of this lifetime parameter.
     */
    final Attr getAnAttr() { result = this.getAttr(_) }

    /**
     * Gets the number of attrs of this lifetime parameter.
     */
    final int getNumberOfAttrs() { result = count(int i | exists(this.getAttr(i))) }

    /**
     * Gets the lifetime of this lifetime parameter, if it exists.
     */
    Lifetime getLifetime() {
      result =
        Synth::convertLifetimeFromRaw(Synth::convertLifetimeParamToRaw(this)
              .(Raw::LifetimeParam)
              .getLifetime())
    }

    /**
     * Holds if `getLifetime()` exists.
     */
    final predicate hasLifetime() { exists(this.getLifetime()) }

    /**
     * Gets the type bound list of this lifetime parameter, if it exists.
     */
    TypeBoundList getTypeBoundList() {
      result =
        Synth::convertTypeBoundListFromRaw(Synth::convertLifetimeParamToRaw(this)
              .(Raw::LifetimeParam)
              .getTypeBoundList())
    }

    /**
     * Holds if `getTypeBoundList()` exists.
     */
    final predicate hasTypeBoundList() { exists(this.getTypeBoundList()) }
  }
}
