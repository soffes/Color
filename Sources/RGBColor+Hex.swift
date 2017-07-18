//
//  RGBColor+Hex.swift
//  Color
//
//  Created by Sam Soffes on 7/17/17.
//  Copyright © 2017 Sam Soffes. All rights reserved.
//

extension RGBColor {
	/// Initialize a color with a hex string.
	public init?(hex string: String) {
		var hex = string.trimmingCharacters(in: .whitespaces)

		// Remove `#` and `0x`
		if hex.hasPrefix("#") {
			hex = hex.substring(from: hex.index(hex.startIndex, offsetBy: 1))
		} else if hex.hasPrefix("0x") {
			hex = hex.substring(from: hex.index(hex.startIndex, offsetBy: 2))
		}

		// Invalid if not 3 or 6 characters
		let length = hex.characters.count
		if length != 3 && length != 6 {
			return nil
		}

		// Make the string 8 characters long for easier parsing
		if length == 3 {
			let r = hex.substring(with: hex.startIndex..<hex.index(hex.startIndex, offsetBy: 1))
			let g = hex.substring(with: hex.index(hex.startIndex, offsetBy: 1)..<hex.index(hex.startIndex, offsetBy: 2))
			let b = hex.substring(with: hex.index(hex.startIndex, offsetBy: 2)..<hex.index(hex.startIndex, offsetBy: 3))
			hex = r + r + g + g + b + b
		}

		// Convert 2 character strings to CGFloats
		func hexValue(_ string: String) -> Double {
			let value = Double(strtoul(string, nil, 16))
			return value / 255
		}

		let red = hexValue(hex.substring(with: hex.startIndex..<hex.index(hex.startIndex, offsetBy: 2)))
		let green = hexValue(hex.substring(with: hex.index(hex.startIndex, offsetBy: 2)..<hex.index(hex.startIndex, offsetBy: 4)))
		let blue = hexValue(hex.substring(with: hex.index(hex.startIndex, offsetBy: 4)..<hex.index(hex.startIndex, offsetBy: 6)))

		self.init(red: red, green: green, blue: blue)
	}

	/// Hex string representation
	public var hex: String? {
		return String(format: "%02x%02x%02x", Int(ceil(red * 255)), Int(ceil(green * 255)), Int(ceil(blue * 255)))
	}
}
