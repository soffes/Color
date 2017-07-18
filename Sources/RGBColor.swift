//
//  RGBColor.swift
//  Color
//
//  Created by Sam Soffes on 6/28/17.
//  Copyright © 2017 Sam Soffes. All rights reserved.
//

/// Portable, pure Swift color representation.
public struct RGBColor: Color {

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
}


extension RGBColor: Equatable {
	public static func == (lhs: RGBColor, rhs: RGBColor) -> Bool {
		return lhs.red == rhs.red && lhs.green == rhs.green && lhs.blue == rhs.blue && lhs.alpha == rhs.alpha
	}
}
