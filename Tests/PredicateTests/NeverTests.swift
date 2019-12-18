import XCTest
@testable import Predicate

final class NeverTests: XCTestCase {
    func testNever() {
        let never = Predicate<Any>.never()
        XCTAssertFalse(never.test(true))
        XCTAssertFalse(never.test(false))
    }
}
