//
//  Color.swift
//  Color
//
//  Created by Sam Soffes on 6/28/17.
//  Copyright © 2017 Sam Soffes. All rights reserved.
//

import AppKit

public extension NSColor {
	public static var preferredColorSpace: NSColorSpace {
		return .genericRGB
	}

	public var convertingToPreferredColorSpace: NSColor? {
		let preferredColorSpace = type(of: self).preferredColorSpace

		if colorSpace == preferredColorSpace {
			return self
		}

		return usingColorSpace(preferredColorSpace)
	}

	public convenience init?(hex string: String) {
		var hex = string.trimmingCharacters(in: .whitespaces)

		// Remove `#` and `0x`
		if hex.hasPrefix("#") {
			hex = hex.substring(from: hex.index(hex.startIndex, offsetBy: 1))
		} else if hex.hasPrefix("0x") {
			hex = hex.substring(from: hex.index(hex.startIndex, offsetBy: 2))
		}

		// Invalid if not 1, 2, 3, 6, or 8 characters but we only allow 3 & 6 for now
		let length = hex.characters.count
		if length != 3 && length != 6 {
			return nil
		}

		// Make the string 8 characters long for easier parsing
		if length == 3 {
			let r = hex.substring(with: hex.startIndex..<hex.index(hex.startIndex, offsetBy: 1))
			let g = hex.substring(with: hex.index(hex.startIndex, offsetBy: 1)..<hex.index(hex.startIndex, offsetBy: 2))
			let b = hex.substring(with: hex.index(hex.startIndex, offsetBy: 2)..<hex.index(hex.startIndex, offsetBy: 3))
			hex = r + r + g + g + b + b + "ff"
		} else if length == 6 {
			hex = String(hex) + "ff"
		}

		// Convert 2 character strings to CGFloats
		func hexValue(_ string: String) -> CGFloat {
			let value = CGFloat(strtoul(string, nil, 16))
			return value / 255
		}

		let red = hexValue(hex.substring(with: hex.startIndex..<hex.index(hex.startIndex, offsetBy: 2)))
		let green = hexValue(hex.substring(with: hex.index(hex.startIndex, offsetBy: 2)..<hex.index(hex.startIndex, offsetBy: 4)))
		let blue = hexValue(hex.substring(with: hex.index(hex.startIndex, offsetBy: 4)..<hex.index(hex.startIndex, offsetBy: 6)))
		let alpha = hexValue(hex.substring(with: hex.index(hex.startIndex, offsetBy: 6)..<hex.index(hex.startIndex, offsetBy: 8)))

		self.init(calibratedRed: red, green: green, blue: blue, alpha: alpha)
	}

	public func hex(includingAlpha: Bool = false) -> String? {
		guard let color = convertingToPreferredColorSpace else { return nil }

		var red: CGFloat = 0
		var green: CGFloat = 0
		var blue: CGFloat = 0

		color.getRed(&red, green: &green, blue: &blue, alpha: nil)

		var output = String(format: "%02x%02x%02x", Int(ceil(red * 255)), Int(ceil(green * 255)), Int(ceil(blue * 255)))


		if includingAlpha {
			output += String(format: "%02x", Int(ceil(color.alphaComponent * 255)))
		}

		return output
	}

	// From https://www.w3.org/TR/WCAG20/#relativeluminancedef
	public var relativeLuminance: CGFloat {
		guard let color = convertingToPreferredColorSpace else { return 0 }

		var red: CGFloat = 0
		var green: CGFloat = 0
		var blue: CGFloat = 0
		color.getRed(&red, green: &green, blue: &blue, alpha: nil)

		red = red <= 0.03928 ? red / 12.92 : pow(((red + 0.055) / 1.055), 2.4)
		green = green <= 0.03928 ? green / 12.92 : pow(((green + 0.055) / 1.055), 2.4)
		blue = blue <= 0.03928 ? blue / 12.92 : pow(((blue + 0.055) / 1.055), 2.4)

		return 0.2126 * red + 0.7152 * green + 0.0722 * blue
	}

	// From http://24ways.org/2010/calculating-color-contrast
	public var yiq: CGFloat {
		guard let color = convertingToPreferredColorSpace else { return 0 }

		var red: CGFloat = 0
		var green: CGFloat = 0
		var blue: CGFloat = 0
		color.getRed(&red, green: &green, blue: &blue, alpha: nil)

		return (red * 255 * 299 + green * 255 * 587 + blue * 255 * 114) / 1000
	}

	public var isDark: Bool {
		return yiq < 128
	}

	// From https://www.w3.org/TR/WCAG20/#contrast-ratiodef
	public static func contrastRatio(_ color1: NSColor, _ color2: NSColor) -> CGFloat {
		let lum1 = color1.relativeLuminance
		let lum2 = color2.relativeLuminance

		return (max(lum1, lum2) + 0.05) / (min(lum1, lum2) + 0.05)
	}

	public func lightening(by increment: CGFloat = 0.01) -> NSColor {
		guard let color = convertingToPreferredColorSpace else { return self }

		var hue: CGFloat = 0
		var saturation: CGFloat = 0
		var brightness: CGFloat = 0
		var alpha: CGFloat = 0
		color.getHue(&hue, saturation: &saturation, brightness: &brightness, alpha: &alpha)

		brightness += increment

		return NSColor(calibratedHue: hue, saturation: saturation, brightness: brightness, alpha: alpha)
	}

	public func darkening(by increment: CGFloat = 0.01) -> NSColor {
		guard let color = convertingToPreferredColorSpace else { return self }

		var hue: CGFloat = 0
		var saturation: CGFloat = 0
		var brightness: CGFloat = 0
		var alpha: CGFloat = 0
		color.getHue(&hue, saturation: &saturation, brightness: &brightness, alpha: &alpha)

		brightness -= increment

		return NSColor(calibratedHue: hue, saturation: saturation, brightness: brightness, alpha: alpha)
	}
}
