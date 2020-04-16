import XCTest

import PredicateCollectionsTests
import PredicateTests

var tests = [XCTestCaseEntry]()
tests += PredicateCollectionsTests.__allTests()
tests += PredicateTests.__allTests()

XCTMain(tests)
