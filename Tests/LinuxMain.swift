import XCTest

import BiPredicateTests
import PredicateCollectionsTests
import PredicateTests

var tests = [XCTestCaseEntry]()
tests += BiPredicateTests.__allTests()
tests += PredicateCollectionsTests.__allTests()
tests += PredicateTests.__allTests()

XCTMain(tests)
