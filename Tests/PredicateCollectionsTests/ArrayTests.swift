import XCTest
@testable import Predicate
@testable import PredicateCollections

final class ArrayTests: XCTestCase {
  let intArray = [1, 2, 3, 4];
  
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
    XCTAssertEqual(intArray.prefix(while: isLessThanTen), ArraySlice([1, 2, 3, 4]))
    
    let isLessThanThree = Predicate { $0 < 3 }
    XCTAssertEqual(intArray.prefix(while: isLessThanThree), ArraySlice([1, 2]))
    
    let isGreaterThanTen = Predicate { $0 > 10 }
    XCTAssertEqual(intArray.prefix(while: isGreaterThanTen), ArraySlice([]))
  }
  
  func testSuffix() {
    let isThree = Predicate { $0 == 3 }
    XCTAssertEqual(intArray.suffix(while: isThree), ArraySlice([]))
    
    let isLessThanTen = Predicate { $0 < 10 }
    XCTAssertEqual(intArray.suffix(while: isLessThanTen), ArraySlice([1, 2, 3, 4]))
    
    let isGreaterThanTwo = Predicate { $0 > 2 }
    XCTAssertEqual(intArray.suffix(while: isGreaterThanTwo), ArraySlice([3, 4]))
    
    let isGreaterThanTen = Predicate { $0 > 10 }
    XCTAssertEqual(intArray.suffix(while: isGreaterThanTen), ArraySlice([]))
  }
  
  func testDrop() {
    let isOdd = Predicate<Int> { $0 % 2 == 1 }
    XCTAssertEqual(intArray.drop(while: isOdd), ArraySlice([2, 3, 4]))
    
    let isLessThanTen = Predicate { $0 < 10 }
    XCTAssertEqual(intArray.drop(while: isLessThanTen), ArraySlice([]))
  }
}
