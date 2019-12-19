import Color
import XCTest

final class TemperatureTests: XCTestCase {
    func testRGB() {
        assertEqualColors(RGBColor(red: 1, green: 108 / 255, blue: 0), RGBColor(colorTemperature: 1500))
        assertEqualColors(RGBColor(white: 1), RGBColor(colorTemperature: 6600))
        assertEqualColors(RGBColor(red: 181 / 255, green: 205 / 255, blue: 1), RGBColor(colorTemperature: 15000))
    }
}
