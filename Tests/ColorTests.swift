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
		let red = RGBColor(red: 1, green: 0, blue: 0, alpha: 1)
		XCTAssertEqual("ff0000", red.hex()!)

		let green = RGBColor(red: 0, green: 1, blue: 0, alpha: 1)
		XCTAssertEqual("00ff00", green.hex()!)

		let blue = RGBColor(red: 0, green: 0, blue: 1, alpha: 1)
		XCTAssertEqual("0000ff", blue.hex()!)

		let purple = RGBColor(red: 110 / 255, green: 61 / 255, blue: 195 / 255, alpha: 1)
		XCTAssertEqual("6e3dc3", purple.hex()!)
	}

	func testFromHex() {
		let purple = RGBColor(hex: "6e3dc3")!
		XCTAssertEqual(purple, RGBColor(red: 110 / 255, green: 61 / 255, blue: 195 / 255, alpha: 1))
	}
}
