import XCTest
@testable import Predicate

final class AlwaysTests: XCTestCase {
    func testAlways() {
        let always = Predicate<Any>.always()
        XCTAssertTrue(always.test(true))
        XCTAssertTrue(always.test(false))
        XCTAssertTrue(always.test(1))
        XCTAssertTrue(always.test("foo"))
    }
}
