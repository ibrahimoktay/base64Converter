import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(base64ConverterTests.allTests),
    ]
}
#endif
