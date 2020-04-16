import XCTest
@testable import Predicate

final class PredicateTests: XCTestCase {
  static var isEven: Predicate<Int> = Predicate { i in i % 2 == 0 }
  static var isOdd: Predicate<Int> = Predicate { i in i % 2 == 1 }
  
  func testPredicateTrue() {
    XCTAssertTrue(PredicateTests.isOdd.test(1))
    XCTAssertTrue(PredicateTests.isEven.test(2))
  }
  
  func testPredicateFalse() {
    XCTAssertFalse(PredicateTests.isEven.test(1))
    XCTAssertFalse(PredicateTests.isOdd.test(2))
  }

  func testCallableValue() {
    XCTAssertTrue(PredicateTests.isOdd(1))
    XCTAssertFalse(PredicateTests.isEven(1))
  }
}
