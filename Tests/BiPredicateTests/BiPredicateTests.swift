import XCTest
@testable import BiPredicate

final class BiPredicateTests: XCTestCase {
  static var bothAreEven: BiPredicate<Int, Int> = BiPredicate { a, b in a % 2 == 0 && b % 2 == 0 }
  static var bothAreOdd: BiPredicate<Int, Int> = BiPredicate { a, b in a % 2 == 1 && b % 2 == 1 }
  
  func testBiPredicateTrue() {
    XCTAssertTrue(BiPredicateTests.bothAreOdd.test(1, 3))
    XCTAssertTrue(BiPredicateTests.bothAreEven.test(2, 4))
  }
  
  func testBiPredicateFalse() {
    XCTAssertFalse(BiPredicateTests.bothAreEven.test(1, 2))
    XCTAssertFalse(BiPredicateTests.bothAreOdd.test(2, 3))
  }

  func testCallableValue() {
    XCTAssertTrue(BiPredicateTests.bothAreOdd(1, 1))
    XCTAssertFalse(BiPredicateTests.bothAreEven(1, 2))
  }
}
