import XCTest
import Color

final class ColorTests: XCTestCase {
	let color1 = RGBColor(red: 170.0 / 255.0, green: 204.0 / 255.0, blue: 1)
	let color2 = RGBColor(red: 34.0 / 255.0, green: 34.0 / 255.0, blue: 51.0 / 255.0)

	func testRelativeLuminance() {
		XCTAssertEqual(0.589, color1.relativeLuminance, accuracy: 0.001)
		XCTAssertEqual(0.017, color2.relativeLuminance, accuracy: 0.001)
	}

	func testContrastRatio() {
		XCTAssertEqual(9.51, color1.contrastRatio(to: color2), accuracy: 0.01)
		XCTAssertEqual(9.51, color2.contrastRatio(to: color1), accuracy: 0.01)
	}

	func testYIQ() {
		XCTAssertEqual(199.648, color1.yiqLuma, accuracy: 0.001)
		XCTAssertEqual(35.938, color2.yiqLuma, accuracy: 0.001)
	}

	func testIsDark() {
		XCTAssertEqual(false, color1.isDark)
		XCTAssertEqual(true, color2.isDark)
	}

    func testToHex() {
        let red = RGBColor(red: 1.0, green: 0.0, blue: 0.0)
        XCTAssertEqual("ff0000", red.hex)

        let green = RGBColor(red: 0.0, green: 1.0, blue: 0.0)
        XCTAssertEqual("00ff00", green.hex)

        let blue = RGBColor(red: 0.0, green: 0.0, blue: 1.0)
        XCTAssertEqual("0000ff", blue.hex)

        let purple = RGBColor(red: 110.0 / 255.0, green: 61.0 / 255.0, blue: 195.0 / 255.0)
        XCTAssertEqual("6e3dc3", purple.hex)

        let mdsGreen = RGBColor(red: 46.0 / 255.0, green: 229.0 / 255.0, blue: 168.0 / 255.0)
        XCTAssertEqual("2ee5a8", mdsGreen.hex)
    }

    func testFromHex() {
        let purple = RGBColor(hex: "6e3dc3")!
        XCTAssertEqual(purple, RGBColor(red: 110 / 255, green: 61 / 255, blue: 195 / 255))

        let mdsGreen = RGBColor(hex: "2ee5a8")!
        XCTAssertEqual(mdsGreen, RGBColor(red: 46 / 255, green: 229 / 255, blue: 168 / 255))
    }

	func testConvertToHSL() {
		let rgb = RGBColor(red: 0.941, green: 0.785, blue: 0.053)
		let hsl = HSLColor(hue: 49.5 / 360, saturation: 0.893, lightness: 0.497)
		let converted = HSLColor(rgb: rgb)
		XCTAssertEqual(hsl.hue, converted.hue, accuracy: 0.1)
		XCTAssertEqual(hsl.saturation, converted.saturation, accuracy: 0.1)
		XCTAssertEqual(hsl.lightness, converted.lightness, accuracy: 0.1)
	}
}
