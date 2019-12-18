import XCTest
@testable import Predicate

final class ArrayTests: XCTestCase {
    let intArray = [1, 2, 3, 4];
    
    func testFilter() {
        let isEven = Predicate<Int> { $0 % 2 == 0 }
        XCTAssertEqual(intArray.filter(isEven), [2, 4])
    }
    
    func testContains() {
        let isThree = Predicate { $0 == 3 }
        XCTAssertTrue(intArray.contains(where: isThree))
        
        let isTen = Predicate { $0 == 10 }
        XCTAssertFalse(intArray.contains(where: isTen))
    }
    
    func testAllSatisfy() {
        let isThree = Predicate { $0 == 3 }
        XCTAssertFalse(intArray.allSatisfy(isThree))
        
        let isLessThanTen = Predicate { $0 < 10 }
        XCTAssertTrue(intArray.allSatisfy(isLessThanTen))
    }
    
    func testFirst() {
        let isThree = Predicate { $0 == 3 }
        XCTAssertEqual(intArray.first(where: isThree), 3)
        
        let isLessThanTen = Predicate { $0 < 10 }
        XCTAssertEqual(intArray.first(where: isLessThanTen), 1)
        
        let isGreaterThanTen = Predicate { $0 > 10 }
        XCTAssertEqual(intArray.first(where: isGreaterThanTen), nil)
    }
    
    func testFirstIndex() {
        let isThree = Predicate { $0 == 3 }
        XCTAssertEqual(intArray.firstIndex(where: isThree), 2)
        
        let isLessThanTen = Predicate { $0 < 10 }
        XCTAssertEqual(intArray.firstIndex(where: isLessThanTen), 0)
        
        let isGreaterThanTen = Predicate { $0 > 10 }
        XCTAssertEqual(intArray.firstIndex(where: isGreaterThanTen), nil)
    }
    
    func testLast() {
        let isThree = Predicate { $0 == 3 }
        XCTAssertEqual(intArray.last(where: isThree), 3)
        
        let isLessThanTen = Predicate { $0 < 10 }
        XCTAssertEqual(intArray.last(where: isLessThanTen), 4)
        
        let isGreaterThanTen = Predicate { $0 > 10 }
        XCTAssertEqual(intArray.last(where: isGreaterThanTen), nil)
    }
    
    func testLastIndex() {
        let isThree = Predicate { $0 == 3 }
        XCTAssertEqual(intArray.lastIndex(where: isThree), 2)
        
        let isLessThanTen = Predicate { $0 < 10 }
        XCTAssertEqual(intArray.lastIndex(where: isLessThanTen), 3)
        
        let isGreaterThanTen = Predicate { $0 > 10 }
        XCTAssertEqual(intArray.lastIndex(where: isGreaterThanTen), nil)
    }
    
    func testPrefix() {
        let isThree = Predicate { $0 == 3 }
        XCTAssertEqual(intArray.prefix(while: isThree), [])
        
        let isLessThanTen = Predicate { $0 < 10 }
        XCTAssertEqual(intArray.prefix(while: isLessThanTen), [1, 2, 3, 4])
        
        let isLessThanThree = Predicate { $0 < 3 }
        XCTAssertEqual(intArray.prefix(while: isLessThanThree), [1, 2])
        
        let isGreaterThanTen = Predicate { $0 > 10 }
        XCTAssertEqual(intArray.prefix(while: isGreaterThanTen), [])
    }
    
    func testSuffix() {
        let isThree = Predicate { $0 == 3 }
        XCTAssertEqual(intArray.suffix(while: isThree), [])
        
        let isLessThanTen = Predicate { $0 < 10 }
        XCTAssertEqual(intArray.suffix(while: isLessThanTen), [1, 2, 3, 4])
        
        let isGreaterThanTwo = Predicate { $0 > 2 }
        XCTAssertEqual(intArray.suffix(while: isGreaterThanTwo), [3, 4])
        
        let isGreaterThanTen = Predicate { $0 > 10 }
        XCTAssertEqual(intArray.suffix(while: isGreaterThanTen), [])
    }
    
    func testDrop() {
        let isOdd = Predicate<Int> { $0 % 2 == 1 }
        XCTAssertEqual(intArray.drop(while: isOdd), [2, 3, 4])
        
        let isLessThanTen = Predicate { $0 < 10 }
        XCTAssertEqual(intArray.drop(while: isLessThanTen), [])
    }
    
    func testMap() {
        let isOdd = Predicate<Int> { $0 % 2 == 1 }
        XCTAssertEqual(intArray.map(isOdd), [true, false, true, false])
    }
    
    func testElementsEqual() {
        let isOdd = Predicate<Int> { $0 % 2 == 1 }
        XCTAssertTrue(intArray.elementsEqual(with: [5,6,7,8], by: isOdd))
    }
}
