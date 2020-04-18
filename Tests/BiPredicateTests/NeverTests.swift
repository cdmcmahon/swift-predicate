import XCTest
@testable import BiPredicate

final class NeverTests: XCTestCase {
  func testNever() {
    let never = BiPredicate<Any, Any>.never()
    XCTAssertFalse(never.test(true, 1))
    XCTAssertFalse(never.test(false, "foo"))
    XCTAssertFalse(never.test(true, false))
    XCTAssertFalse(never.test(3.3, "foo"))
  }
}
