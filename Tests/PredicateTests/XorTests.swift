import XCTest
@testable import Predicate

final class XorTests: XCTestCase {
  func testXor() {
    let greaterThanZero: Predicate<Int> = Predicate { val in val > 0 }
    let greaterThanTen: Predicate<Int> = Predicate { val in val > 10 }
    XCTAssertFalse(greaterThanZero.xor(greaterThanTen).test(20))
    XCTAssertTrue(greaterThanZero.xor(greaterThanTen).test(5))
    XCTAssertFalse(greaterThanZero.xor(greaterThanTen).test(-5))
  }
}
