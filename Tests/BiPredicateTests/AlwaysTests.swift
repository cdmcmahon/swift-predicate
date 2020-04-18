import XCTest
@testable import BiPredicate

final class AlwaysTests: XCTestCase {
  func testAlways() {
    let always = BiPredicate<Any, Any>.always()
    XCTAssertTrue(always.test(true, false))
    XCTAssertTrue(always.test(false, false))
    XCTAssertTrue(always.test(1, "foo"))
    XCTAssertTrue(always.test("foo", 2.1))
  }
}
