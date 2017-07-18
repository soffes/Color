//
//  ColorTests.swift
//  Color
//
//  Created by Sam Soffes on 6/29/17.
//  Copyright © 2017 Sam Soffes. All rights reserved.
//

import XCTest
import Color

final class ColorTests: XCTestCase {
	let color1 = RGBColor(hex: "acf")!
	let color2 = RGBColor(hex: "222233")!

	func testRelativeLuminance() {
		XCTAssertEqualWithAccuracy(0.589, color1.relativeLuminance, accuracy: 0.001)
		XCTAssertEqualWithAccuracy(0.017, color2.relativeLuminance, accuracy: 0.001)
	}

	func testContrastRatio() {
		XCTAssertEqualWithAccuracy(9.51, color1.contrastRatio(to: color2), accuracy: 0.01)
		XCTAssertEqualWithAccuracy(9.51, color2.contrastRatio(to: color1), accuracy: 0.01)
	}

	func testYIQ() {
		XCTAssertEqualWithAccuracy(199.648, color1.yiqLuma, accuracy: 0.001)
		XCTAssertEqualWithAccuracy(35.938, color2.yiqLuma, accuracy: 0.001)
	}

	func testIsDark() {
		XCTAssertEqual(false, color1.isDark)
		XCTAssertEqual(true, color2.isDark)
	}

	func testToHex() {
		let red = RGBColor(red: 1.0, green: 0.0, blue: 0.0)
		XCTAssertEqual("ff0000", red.hex!)

		let green = RGBColor(red: 0.0, green: 1.0, blue: 0.0)
		XCTAssertEqual("00ff00", green.hex!)

		let blue = RGBColor(red: 0.0, green: 0.0, blue: 1.0)
		XCTAssertEqual("0000ff", blue.hex!)

		let purple = RGBColor(red: 110.0 / 255.0, green: 61.0 / 255.0, blue: 195.0 / 255.0)
		XCTAssertEqual("6e3dc3", purple.hex!)
	}

	func testFromHex() {
		let purple = RGBColor(hex: "6e3dc3")!
		XCTAssertEqual(purple, RGBColor(red: 110 / 255, green: 61 / 255, blue: 195 / 255))
	}

	func testConvertToHSL() {
		let rgb = RGBColor(red: 0.941, green: 0.785, blue: 0.053)
		let hsl = HSLColor(hue: 49.5 / 360, saturation: 0.893, lightness: 0.497)
		let converted = rgb.hslColor
		XCTAssertEqualWithAccuracy(hsl.hue, converted.hue, accuracy: 0.1)
		XCTAssertEqualWithAccuracy(hsl.saturation, converted.saturation, accuracy: 0.1)
		XCTAssertEqualWithAccuracy(hsl.lightness, converted.lightness, accuracy: 0.1)
	}
}
