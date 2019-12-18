import XCTest
@testable import Predicate

final class EqualToTests: XCTestCase {
    func testZip() {
        let equalToFour: Predicate<Int> = Predicate<Int>.equalTo(4)
        XCTAssertTrue(equalToFour.test(4))
        XCTAssertFalse(equalToFour.test(5))
    }
}
