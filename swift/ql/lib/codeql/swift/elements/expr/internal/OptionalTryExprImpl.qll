private import codeql.swift.generated.expr.OptionalTryExpr

module Impl {
  class OptionalTryExpr extends Generated::OptionalTryExpr {
    override string toStringImpl() { result = "try? ..." }
  }
}
