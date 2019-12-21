import XCTest
@testable import Predicate

final class SetTests: XCTestCase {
    let set: Set = [1,2,3,4]
    let isEven = Predicate<Int> { $0 % 2 == 0 }
    let isOdd = Predicate<Int> { $0 % 2 == 1 }
    
    func testFilter() {
        XCTAssertEqual(set.filter(isEven), Set([2,4]))
        XCTAssertEqual(set.filter(isOdd), Set([1,3]))
        XCTAssertEqual(set.filter(Predicate.never()), Set([]))
        XCTAssertEqual(set.filter(Predicate.always()), set)
    }
}
