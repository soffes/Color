//
//  RGBColor.swift
//  Color
//
//  Created by Sam Soffes on 6/28/17.
//  Copyright © 2017 Sam Soffes. All rights reserved.
//

/// Portable, pure Swift color representation.
public struct RGBColor {

	// MARK: - Properties

	public var red: Double
	public var green: Double
	public var blue: Double


	// MARK: - Initializers

	public init(red: Double, green: Double, blue: Double) {
		self.red = red
		self.green = green
		self.blue = blue
	}

	public init(white: Double) {
		self.init(red: white, green: white, blue: white)
	}
}


extension RGBColor: Equatable {
	public static func == (lhs: RGBColor, rhs: RGBColor) -> Bool {
		return lhs.red == rhs.red && lhs.green == rhs.green && lhs.blue == rhs.blue
	}
}
