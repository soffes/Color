//
//  Color.swift
//  Color
//
//  Created by Sam Soffes on 6/28/17.
//  Copyright © 2017 Sam Soffes. All rights reserved.
//

/// Portable, pure Swift color representation.
public struct Color {

	// MARK: - Properties

	public var red: Double
	public var green: Double
	public var blue: Double
	public var alpha: Double


	// MARK: - Initializers

	public init(red: Double, green: Double, blue: Double, alpha: Double = 1) {
		self.red = red
		self.green = green
		self.blue = blue
		self.alpha = alpha
	}

	public init(white: Double, alpha: Double = 1) {
		self.red = white
		self.green = white
		self.blue = white
		self.alpha = alpha
	}


	// MARK: - Calculations

	/// YIQ luma value.
	///
	/// From https://en.wikipedia.org/wiki/YIQ
	public var yiqLuma: Double {
		return (red * 255 * 299 + green * 255 * 587 + blue * 255 * 114) / 1000
	}

	/// From http://24ways.org/2010/calculating-color-contrast
	public var isDark: Bool {
		return yiqLuma < 128
	}
}


extension Color: Equatable {
	public static func == (lhs: Color, rhs: Color) -> Bool {
		return lhs.red == rhs.red && lhs.green == rhs.green && lhs.blue == rhs.blue && lhs.alpha == rhs.alpha
	}
}
