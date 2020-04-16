import XCTest
@testable import Predicate

@available(swift 5.2)
final class PredicateCallableValueTests: XCTestCase {
  static var isEven: Predicate<Int> = Predicate { i in i % 2 == 0 }
  
  func testCallableValue() {
    XCTAssertTrue(PredicateTests.isEven(2))
    XCTAssertFalse(PredicateTests.isEven(1))
  }
}
