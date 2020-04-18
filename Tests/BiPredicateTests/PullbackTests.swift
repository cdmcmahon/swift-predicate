import XCTest
@testable import BiPredicate

final class PullbackTests: XCTestCase {
  func testPullback() {
    let bothGreaterThan5: BiPredicate<Int, Int> = BiPredicate { a, b in a > 5 && b > 5 }
    let bothStringLengthsGreaterThan5: BiPredicate<String, String> = bothGreaterThan5.pullback(
      { str in str.count },
      { str in str.count }
    )
    XCTAssertTrue(bothStringLengthsGreaterThan5.test("foo bar baz", "foo bar baz"))
    XCTAssertFalse(bothStringLengthsGreaterThan5.test("foo bar baz", "bar"))
    XCTAssertFalse(bothStringLengthsGreaterThan5.test("foo", "foo bar baz"))
    XCTAssertFalse(bothStringLengthsGreaterThan5.test("foo", "bar"))
  }
}
