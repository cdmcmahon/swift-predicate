import XCTest
@testable import Predicate

final class SequenceTests: XCTestCase {
    let sequence: AnySequence = AnySequence([1,2,3,4])
    
    func testFilter() {
        let isEven = Predicate<Int> { $0 % 2 == 0 }
        XCTAssertEqual(sequence.filter(isEven), [2, 4])
    }
    
    func testContains() {
        let isThree = Predicate { $0 == 3 }
        XCTAssertTrue(sequence.contains(where: isThree))
        
        let isTen = Predicate { $0 == 10 }
        XCTAssertFalse(sequence.contains(where: isTen))
    }
    
    func testAllSatisfy() {
        let isThree = Predicate { $0 == 3 }
        XCTAssertFalse(sequence.allSatisfy(isThree))
        
        let isLessThanTen = Predicate { $0 < 10 }
        XCTAssertTrue(sequence.allSatisfy(isLessThanTen))
    }
    
    func testFirst() {
        let isThree = Predicate { $0 == 3 }
        XCTAssertEqual(sequence.first(where: isThree), 3)
        
        let isLessThanTen = Predicate { $0 < 10 }
        XCTAssertEqual(sequence.first(where: isLessThanTen), 1)
        
        let isGreaterThanTen = Predicate { $0 > 10 }
        XCTAssertEqual(sequence.first(where: isGreaterThanTen), nil)
    }
    
    func testPrefix() {
        let isThree = Predicate { $0 == 3 }
        XCTAssertEqual(sequence.prefix(while: isThree), [])
        
        let isLessThanTen = Predicate { $0 < 10 }
        XCTAssertEqual(sequence.prefix(while: isLessThanTen), [1, 2, 3, 4])
        
        let isLessThanThree = Predicate { $0 < 3 }
        XCTAssertEqual(sequence.prefix(while: isLessThanThree), [1, 2])
        
        let isGreaterThanTen = Predicate { $0 > 10 }
        XCTAssertEqual(sequence.prefix(while: isGreaterThanTen), [])
    }
    
    func testDrop() {
        let isOdd = Predicate<Int> { $0 % 2 == 1 }
        XCTAssertEqual(Array(sequence.drop(while: isOdd)), [2, 3, 4])
        
        let isLessThanTen = Predicate { $0 < 10 }
        XCTAssertEqual(Array(sequence.drop(while: isLessThanTen)), [])
    }
    
    func testMap() {
        let isOdd = Predicate<Int> { $0 % 2 == 1 }
        XCTAssertEqual(sequence.map(isOdd), [true, false, true, false])
    }
}
