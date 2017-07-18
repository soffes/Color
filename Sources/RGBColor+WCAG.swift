//
//  RGBColor+WCAG.swift
//  Color
//
//  Created by Sam Soffes on 7/17/17.
//  Copyright © 2017 Sam Soffes. All rights reserved.
//

extension RGBColor {

	/// Relative luminance
	///
	/// From https://www.w3.org/TR/WCAG20/#relativeluminancedef
	public var relativeLuminance: Double {
		let red = self.red <= 0.03928 ? self.red / 12.92 : pow(((self.red + 0.055) / 1.055), 2.4)
		let green = self.green <= 0.03928 ? self.green / 12.92 : pow(((self.green + 0.055) / 1.055), 2.4)
		let blue = self.blue <= 0.03928 ? self.blue / 12.92 : pow(((self.blue + 0.055) / 1.055), 2.4)

		return 0.2126 * red + 0.7152 * green + 0.0722 * blue
	}

	/// Contrast ratio
	///
	/// - parameter to: the color to compare the receiver to
	///
	/// From https://www.w3.org/TR/WCAG20/#contrast-ratiodef
	public func contrastRatio(to other: RGBColor) -> Double {
		let lum1 = relativeLuminance
		let lum2 = other.relativeLuminance

		return (max(lum1, lum2) + 0.05) / (min(lum1, lum2) + 0.05)
	}
}
