import XCTest

extension ColorTests {
    static let __allTests = [
        ("testContrastRatio", testContrastRatio),
        ("testConvertToHSL", testConvertToHSL),
        ("testFromHex", testFromHex),
        ("testIsDark", testIsDark),
        ("testRelativeLuminance", testRelativeLuminance),
        ("testToHex", testToHex),
        ("testYIQ", testYIQ),
    ]
}

#if !os(macOS)
public func __allTests() -> [XCTestCaseEntry] {
    return [
        testCase(ColorTests.__allTests),
    ]
}
#endif
