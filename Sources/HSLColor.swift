//
//  HSLColor.swift
//  Color
//
//  Created by Sam Soffes on 7/18/17.
//  Copyright © 2017 Sam Soffes. All rights reserved.
//

public struct HSLColor {
	public var hue: Double
	public var saturation: Double
	public var lightness: Double

	public init(hue: Double, saturation: Double, lightness: Double) {
		self.hue = hue
		self.saturation = saturation
		self.lightness = lightness
	}

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
