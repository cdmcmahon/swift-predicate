import XCTest
@testable import BiPredicate

final class XorTests: XCTestCase {
  func testXor() {
    let sumsToTen: BiPredicate<Int, Int> = BiPredicate { a, b in a + b == 10 }
    let bothGreaterThanThree: BiPredicate<Int, Int> = BiPredicate { a, b in a > 3 && b > 3 }
    XCTAssertFalse(sumsToTen.xor(bothGreaterThanThree).test(5, 5))
    XCTAssertTrue(sumsToTen.xor(bothGreaterThanThree).test(2, 8))
    XCTAssertTrue(sumsToTen.xor(bothGreaterThanThree).test(6, 7))
    XCTAssertFalse(sumsToTen.xor(bothGreaterThanThree).test(1, 2))
  }
}

