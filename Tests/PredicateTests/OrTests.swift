import XCTest
@testable import Predicate

final class OrTests: XCTestCase {
  func testOr() {
    let greaterThanZero: Predicate<Int> = Predicate { val in val > 0 }
    let greaterThanTen: Predicate<Int> = Predicate { val in val > 10 }
    XCTAssertTrue(greaterThanZero.or(greaterThanTen).test(20))
    XCTAssertTrue(greaterThanZero.or(greaterThanTen).test(5))
    XCTAssertFalse(greaterThanZero.or(greaterThanTen).test(-5))
  }
}
