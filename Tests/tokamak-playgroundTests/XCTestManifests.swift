import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(tokamak_playgroundTests.allTests),
    ]
}
#endif
