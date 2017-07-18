//
//  Color+YIQ.swift
//  Color
//
//  Created by Sam Soffes on 7/18/17.
//  Copyright © 2017 Sam Soffes. All rights reserved.
//

extension Color {
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
