import XCTest
@testable import Predicate

final class SequenceTests: XCTestCase {
    let sequence: AnySequence = AnySequence([1,2,3,4])
    let isEven = Predicate<Int> { $0 % 2 == 0 }
    let isOdd = Predicate<Int> { $0 % 2 == 1 }
    let isThree = Predicate { $0 == 3 }
    let isTen = Predicate { $0 == 10 }
    let isLessThanTen = Predicate { $0 < 10 }
    let isLessThanThree = Predicate { $0 < 3 }
    let isGreaterThanTen = Predicate { $0 > 10 }
    
    func testFilter() {
        XCTAssertEqual(sequence.filter(isEven), [2, 4])
    }
    
    func testContains() {
        XCTAssertTrue(sequence.contains(where: isThree))
        XCTAssertFalse(sequence.contains(where: isTen))
    }
    
    func testAllSatisfy() {
        XCTAssertFalse(sequence.allSatisfy(isThree))
        XCTAssertTrue(sequence.allSatisfy(isLessThanTen))
    }
    
    func testFirst() {
        XCTAssertEqual(sequence.first(where: isThree), 3)
        XCTAssertEqual(sequence.first(where: isLessThanTen), 1)
        XCTAssertEqual(sequence.first(where: isGreaterThanTen), nil)
    }
    
    func testPrefix() {
        XCTAssertEqual(sequence.prefix(while: isThree), [])
        XCTAssertEqual(sequence.prefix(while: isLessThanTen), [1, 2, 3, 4])
        XCTAssertEqual(sequence.prefix(while: isLessThanThree), [1, 2])
        XCTAssertEqual(sequence.prefix(while: isGreaterThanTen), [])
    }
    
    func testDrop() {
        XCTAssertEqual(Array(sequence.drop(while: isOdd)), [2, 3, 4])
        XCTAssertEqual(Array(sequence.drop(while: isLessThanTen)), [])
    }
    
    func testMap() {
        XCTAssertEqual(sequence.map(isOdd), [true, false, true, false])
    }
    
    func testCountWhere() {
        XCTAssertEqual(sequence.count(where: Predicate.never()), 0)
        XCTAssertEqual(sequence.count(where: isThree), 1)
        XCTAssertEqual(sequence.count(where: isOdd), 2)
        XCTAssertEqual(sequence.count(where: Predicate.always()), 4)
    }
}
