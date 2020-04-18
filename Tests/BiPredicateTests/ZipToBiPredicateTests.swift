import XCTest
@testable import Predicate
@testable import BiPredicate

final class ZipTests: XCTestCase {
  static var isEven: Predicate<Int> = Predicate { i in i % 2 == 0 }
  static var isOdd: Predicate<Int> = Predicate { i in i % 2 == 1 }
  
  func testZip() {
    let evenThenOdd: BiPredicate<Int, Int> = zipToBiPredicate(ZipTests.isEven, ZipTests.isOdd)
    XCTAssertTrue(evenThenOdd.test(2, 3))
    XCTAssertFalse(evenThenOdd.test(1, 2))
  }
}
