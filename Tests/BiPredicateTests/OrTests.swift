import XCTest
@testable import BiPredicate

final class OrTests: XCTestCase {
  func testOr() {
    let bothGreaterThanZero: BiPredicate<Int, Int> = BiPredicate { a, b in a > 0 && b > 0 }
    let bothGreaterThanTen: BiPredicate<Int, Int> = BiPredicate { a, b in a > 10 && b > 10 }
    XCTAssertTrue(bothGreaterThanZero.or(bothGreaterThanTen).test(20, 20))
    XCTAssertTrue(bothGreaterThanZero.or(bothGreaterThanTen).test(20, 5))
    XCTAssertFalse(bothGreaterThanZero.or(bothGreaterThanTen).test(20, -5))
    XCTAssertTrue(bothGreaterThanZero.or(bothGreaterThanTen).test(5, 5))
    XCTAssertTrue(bothGreaterThanZero.or(bothGreaterThanTen).test(20, 5))
    XCTAssertFalse(bothGreaterThanZero.or(bothGreaterThanTen).test(-5, 5))
    XCTAssertFalse(bothGreaterThanZero.or(bothGreaterThanTen).test(-5, -5))
  }
  
  func testOrOperator() {
    let bothGreaterThanZero: BiPredicate<Int, Int> = BiPredicate { a, b in a > 0 && b > 0 }
    let bothGreaterThanTen: BiPredicate<Int, Int> = BiPredicate { a, b in a > 10 && b > 10 }
    XCTAssertTrue((bothGreaterThanZero || bothGreaterThanTen).test(20, 20))
    XCTAssertTrue((bothGreaterThanZero || bothGreaterThanTen).test(20, 5))
    XCTAssertFalse((bothGreaterThanZero || bothGreaterThanTen).test(20, -5))
    XCTAssertTrue((bothGreaterThanZero || bothGreaterThanTen).test(5, 5))
    XCTAssertTrue((bothGreaterThanZero || bothGreaterThanTen).test(20, 5))
    XCTAssertFalse((bothGreaterThanZero || bothGreaterThanTen).test(-5, 5))
    XCTAssertFalse((bothGreaterThanZero || bothGreaterThanTen).test(-5, -5))
  }
}
