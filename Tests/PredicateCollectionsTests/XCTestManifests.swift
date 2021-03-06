#if !canImport(ObjectiveC)
import XCTest

extension ArrayTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__ArrayTests = [
        ("testDrop", testDrop),
        ("testFirstIndex", testFirstIndex),
        ("testLast", testLast),
        ("testLastIndex", testLastIndex),
        ("testPrefix", testPrefix),
        ("testSuffix", testSuffix),
    ]
}

extension DictionaryTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__DictionaryTests = [
        ("testFilter", testFilter),
    ]
}

extension SequenceTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__SequenceTests = [
        ("testAllSatisfy", testAllSatisfy),
        ("testContains", testContains),
        ("testCountWhere", testCountWhere),
        ("testDrop", testDrop),
        ("testFilter", testFilter),
        ("testFirst", testFirst),
        ("testMap", testMap),
        ("testPrefix", testPrefix),
    ]
}

extension SetTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__SetTests = [
        ("testFilter", testFilter),
    ]
}

public func __allTests() -> [XCTestCaseEntry] {
    return [
        testCase(ArrayTests.__allTests__ArrayTests),
        testCase(DictionaryTests.__allTests__DictionaryTests),
        testCase(SequenceTests.__allTests__SequenceTests),
        testCase(SetTests.__allTests__SetTests),
    ]
}
#endif
