//
//  HSLColor.swift
//  Color
//
//  Created by Sam Soffes on 7/18/17.
//  Copyright © 2017 Sam Soffes. All rights reserved.
//

public struct HSLColor {

	// MARK: - Properties

	public var hue: Double
	public var saturation: Double
	public var lightness: Double


	// MARK: - Initializers

	public init(hue: Double, saturation: Double, lightness: Double) {
		self.hue = hue
		self.saturation = saturation
		self.lightness = lightness
	}

	public init(rgb color: RGBColor) {
		self.init(red: color.red, green: color.green, blue: color.blue)
	}

	public init(red: Double, green: Double, blue: Double) {
		let min = Swift.min(Swift.min(red, green), blue)
		let max = Swift.max(Swift.max(red, green), blue)
		let delta = max - min

		var hue: Double
		let saturation: Double
		let lightness: Double

		if max == min {
			hue = 0
		} else if red == max {
			hue = (green - blue) / delta
		} else if green == max {
			hue = 2 + (blue - red) / delta
		} else {
			hue = 4 + (red - green) / delta
		}

		hue = Swift.min(hue * 60, 360)

		if hue < 0 {
			hue += 360
		}

		hue /= 360

		lightness = (min + max) / 2

		if max == min {
			saturation = 0
		} else if lightness <= 0.5 {
			saturation = delta / (max + min)
		} else {
			saturation = delta / (2 - max - min)
		}

		self.init(hue: hue, saturation: saturation, lightness: lightness)
	}


	// MARK: - Mutating

	public mutating func lighten(by ratio: Double = 0.01) {
		lightness += lightness * ratio
	}

	public func lightening(by ratio: Double = 0.01) -> HSLColor {
		var color = self
		color.lighten(by: ratio)
		return color
	}

	public mutating func darken(by ratio: Double = 0.01) {
		lightness -= lightness * ratio
	}

	public func darkening(by ratio: Double = 0.01) -> HSLColor {
		var color = self
		color.darken(by: ratio)
		return color
	}

	public mutating func saturate(by ratio: Double = 0.01) {
		saturation += saturation * ratio
	}

	public func saturating(by ratio: Double = 0.01) -> HSLColor {
		var color = self
		color.saturate(by: ratio)
		return color
	}

	public mutating func desaturate(by ratio: Double = 0.01) {
		saturation -= saturation * ratio
	}

	public func desaturating(by ratio: Double = 0.01) -> HSLColor {
		var color = self
		color.desaturate(by: ratio)
		return color
	}
}


extension HSLColor: Equatable {
	public static func == (lhs: HSLColor, rhs: HSLColor) -> Bool {
		return lhs.hue == rhs.hue && lhs.saturation == rhs.saturation && lhs.lightness == rhs.lightness
	}
}
