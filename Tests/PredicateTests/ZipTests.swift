import XCTest
@testable import Predicate

final class ZipTests: XCTestCase {
    func testZip() {
        let evenThenOdd: Predicate<(Int, Int)> = zip(PredicateTests.isEven, PredicateTests.isOdd)
        XCTAssertTrue(evenThenOdd.test((2, 3)))
        XCTAssertFalse(evenThenOdd.test((1, 2)))
    }
}
