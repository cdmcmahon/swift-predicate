import XCTest
@testable import BiPredicate

final class PredicateTests: XCTestCase {
  static var bothAreEven: BiPredicate<Int, Int> = BiPredicate { a, b in a % 2 == 0 && a % 2 == 0 }
  static var bothAreOdd: BiPredicate<Int, Int> = BiPredicate { a, b in a % 2 == 1 && a % 2 == 1 }
  
  func testBiPredicateTrue() {
    XCTAssertTrue(PredicateTests.bothAreOdd.test(1, 3))
    XCTAssertTrue(PredicateTests.bothAreEven.test(2, 4))
  }
  
  func testBiPredicateFalse() {
    XCTAssertFalse(PredicateTests.bothAreEven.test(1, 2))
    XCTAssertFalse(PredicateTests.bothAreOdd.test(2, 3))
  }

  func testCallableValue() {
    XCTAssertTrue(PredicateTests.bothAreOdd(1, 1))
    XCTAssertFalse(PredicateTests.bothAreEven(1, 2))
  }
}
