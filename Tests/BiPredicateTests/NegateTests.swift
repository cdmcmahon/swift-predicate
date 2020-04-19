import XCTest
@testable import BiPredicate

final class NegateTests: XCTestCase {
  func testNegate() {
    let notBothAreEven: BiPredicate<Int, Int> = BiPredicateTests.bothAreEven.negate()
    XCTAssertTrue(notBothAreEven.test(1, 3))
    XCTAssertTrue(notBothAreEven.test(2, 3))
    XCTAssertFalse(notBothAreEven.test(2, 4))
  }
  
  func testNegateOperator() {
    let notBothAreEven: BiPredicate<Int, Int> = !BiPredicateTests.bothAreEven
    XCTAssertTrue(notBothAreEven.test(1, 3))
    XCTAssertTrue(notBothAreEven.test(2, 3))
    XCTAssertFalse(notBothAreEven.test(2, 4))
  }
}
