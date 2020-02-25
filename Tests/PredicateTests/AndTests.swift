import XCTest
@testable import Predicate

final class AndTests: XCTestCase {
  func testAnd() {
    let greaterThanZero: Predicate<Int> = Predicate { val in val > 0 }
    let greaterThanTen: Predicate<Int> = Predicate { val in val > 10 }
    XCTAssertTrue(greaterThanZero.and(greaterThanTen).test(20))
    XCTAssertFalse(greaterThanZero.and(greaterThanTen).test(5))
    XCTAssertFalse(greaterThanZero.and(greaterThanTen).test(-5))
  }
}
