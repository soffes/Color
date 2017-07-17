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
	let color1 = NSColor(hex: "acf")!
	let color2 = NSColor(hex: "222233")!

	func testRelativeLuminance() {
		XCTAssertEqualWithAccuracy(0.589, color1.relativeLuminance, accuracy: 0.001)
		XCTAssertEqualWithAccuracy(0.017, color2.relativeLuminance, accuracy: 0.001)
	}

	func testContrastRatio() {
		XCTAssertEqualWithAccuracy(9.51, NSColor.contrastRatio(color1, color2), accuracy: 0.01)
		XCTAssertEqualWithAccuracy(9.51, NSColor.contrastRatio(color2, color1), accuracy: 0.01)
	}

	func testYIQ() {
		XCTAssertEqualWithAccuracy(199.648, color1.yiq, accuracy: 0.001)
		XCTAssertEqualWithAccuracy(35.938, color2.yiq, accuracy: 0.001)
	}

	func testIsDark() {
		XCTAssertEqual(false, color1.isDark)
		XCTAssertEqual(true, color2.isDark)
	}

	func testToHex() {
		let red = NSColor(calibratedRed: 1, green: 0, blue: 0, alpha: 1)
		XCTAssertEqual("ff0000", red.hex()!)

		let green = NSColor(calibratedRed: 0, green: 1, blue: 0, alpha: 1)
		XCTAssertEqual("00ff00", green.hex()!)

		let blue = NSColor(calibratedRed: 0, green: 0, blue: 1, alpha: 1)
		XCTAssertEqual("0000ff", blue.hex()!)

		let purple = NSColor(calibratedRed: 110 / 255, green: 61 / 255, blue: 195 / 255, alpha: 1)
		XCTAssertEqual("6e3dc3", purple.hex()!)
	}

	func testFromHex() {
		let purple = NSColor(hex: "6e3dc3")!
		XCTAssertEqual(purple, NSColor(calibratedRed: 110 / 255, green: 61 / 255, blue: 195 / 255, alpha: 1))
	}
}
