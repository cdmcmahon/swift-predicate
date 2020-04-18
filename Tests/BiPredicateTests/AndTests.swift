import XCTest
@testable import BiPredicate

final class AndTests: XCTestCase {
  func testAndSameType() {
    let bothGreaterThanZero: BiPredicate<Int, Int> = BiPredicate { a, b in a > 0 && b > 0 }
    let bothGreaterThanTen: BiPredicate<Int, Int> = BiPredicate { a, b in a > 10 && b > 10 }
    XCTAssertTrue(bothGreaterThanZero.and(bothGreaterThanTen).test(20, 12))
    XCTAssertFalse(bothGreaterThanZero.and(bothGreaterThanTen).test(20, 5))
    XCTAssertFalse(bothGreaterThanZero.and(bothGreaterThanTen).test(5, 20))
    XCTAssertFalse(bothGreaterThanZero.and(bothGreaterThanTen).test(-5, 5))
  }
  
  func testAndDifferentTypes() {
    let bothGreaterThanZero: BiPredicate<Int, Float> = BiPredicate { a, b in a > 0 && b > 0 }
    let bothGreaterThanTen: BiPredicate<Int, Float> = BiPredicate { a, b in a > 10 && b > 10 }
    XCTAssertTrue(bothGreaterThanZero.and(bothGreaterThanTen).test(20, 12.1))
    XCTAssertFalse(bothGreaterThanZero.and(bothGreaterThanTen).test(20, 5.0))
    XCTAssertFalse(bothGreaterThanZero.and(bothGreaterThanTen).test(5, 20.12))
    XCTAssertFalse(bothGreaterThanZero.and(bothGreaterThanTen).test(-5, 5.5))
  }
}
