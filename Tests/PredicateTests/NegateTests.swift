import XCTest
@testable import Predicate

final class NegateTests: XCTestCase {
  func testNegate() {
    let isOdd: Predicate<Int> = PredicateTests.isEven.negate()
    XCTAssertTrue(isOdd.test(1))
    XCTAssertFalse(isOdd.test(2))
  }
  
  func testNegateOperator() {
    let isOdd: Predicate<Int> = !PredicateTests.isEven
    XCTAssertTrue(isOdd.test(1))
    XCTAssertFalse(isOdd.test(2))
  }
}
