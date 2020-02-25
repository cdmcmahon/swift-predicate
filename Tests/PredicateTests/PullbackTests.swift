import XCTest
@testable import Predicate

final class PullbackTests: XCTestCase {
  func testPullback() {
    let greaterThan5: Predicate<Int> = Predicate { val in val > 5 }
    let stringLengthGreaterThan5: Predicate<String> = greaterThan5.pullback({ str in str.count })
    XCTAssertTrue(stringLengthGreaterThan5.test("foo bar baz"))
    XCTAssertFalse(stringLengthGreaterThan5.test("foo"))
  }
}
