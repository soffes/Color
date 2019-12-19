import Color
import XCTest

func assertEqualColors(_ lhs: Color.RGBColor, _ rhs: Color.RGBColor) {
    XCTAssertEqual(lhs.red, rhs.red, accuracy: 0.001)
    XCTAssertEqual(lhs.green, rhs.green, accuracy: 0.001)
    XCTAssertEqual(lhs.blue, rhs.blue, accuracy: 0.001)
}
