import go
import ModelValidation
import utils.test.InlineExpectationsTest
import MakeTest<FlowTest>

module Config implements DataFlow::ConfigSig {
  predicate isSource(DataFlow::Node source) { sourceNode(source, "qltest") }

  predicate isSink(DataFlow::Node sink) { sinkNode(sink, "qltest") }
}

module Flow = TaintTracking::Global<Config>;

module FlowTest implements TestSig {
  string getARelevantTag() { result = "I2[f]" }

  predicate hasActualResult(Location location, string element, string tag, string value) {
    tag = "I2[f]" and
    exists(DataFlow::Node sink | Flow::flowTo(sink) |
      sink.getLocation() = location and
      element = sink.toString() and
      value = ""
    )
  }
}
