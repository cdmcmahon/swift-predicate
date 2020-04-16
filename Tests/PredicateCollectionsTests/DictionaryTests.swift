import XCTest
@testable import Predicate
@testable import PredicateCollections

final class DictionaryTests: XCTestCase {
  let dict: Dictionary<String, Int> = [
    "foo": 3,
    "bar": 4,
    "foobar": 6
  ]
  let stringLengthEqualsInt = Predicate<(String, Int)> { stringVal, intVal in
    return stringVal.count == intVal
  }
  
  func testFilter() {
    XCTAssertEqual(
      dict.filter(stringLengthEqualsInt),
      [
        "foo": 3,
        "foobar": 6
      ]
    )
    XCTAssertEqual(
      dict.filter(stringLengthEqualsInt.negate()),
      ["bar": 4]
    )
  }
}
