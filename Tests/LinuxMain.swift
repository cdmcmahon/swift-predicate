import XCTest

import PredicateTests
import PredicateCollectionsTests

var tests = [XCTestCaseEntry]()
tests += PredicateTests.__allTests()
tests += PredicateCollectionsTests.__allTests()

XCTMain(tests)
