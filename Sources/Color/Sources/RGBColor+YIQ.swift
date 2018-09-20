extension RGBColor {
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
