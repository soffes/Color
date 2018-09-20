#if !os(Linux)
	/// From https://developer.mozilla.org/en-US/docs/Web/CSS/color_value
	extension RGBColor {

		// MARK: - CSS Level 1

		public static var black: RGBColor {
			return RGBColor(hex: "000000")!
		}

		public static var silver: RGBColor {
			return RGBColor(hex: "c0c0c0")!
		}

		public static var gray: RGBColor {
			return RGBColor(hex: "808080")!
		}

		public static var white: RGBColor {
			return RGBColor(hex: "ffffff")!
		}

		public static var maroon: RGBColor {
			return RGBColor(hex: "800000")!
		}

		public static var red: RGBColor {
			return RGBColor(hex: "ff0000")!
		}

		public static var purple: RGBColor {
			return RGBColor(hex: "800080")!
		}

		public static var fuchsia: RGBColor {
			return RGBColor(hex: "ff00ff")!
		}

		public static var green: RGBColor {
			return RGBColor(hex: "008000")!
		}

		public static var lime: RGBColor {
			return RGBColor(hex: "00ff00")!
		}

		public static var olive: RGBColor {
			return RGBColor(hex: "808000")!
		}

		public static var yellow: RGBColor {
			return RGBColor(hex: "ffff00")!
		}

		public static var navy: RGBColor {
			return RGBColor(hex: "000080")!
		}

		public static var blue: RGBColor {
			return RGBColor(hex: "0000ff")!
		}

		public static var teal: RGBColor {
			return RGBColor(hex: "008080")!
		}

		public static var aqua: RGBColor {
			return RGBColor(hex: "00ffff")!
		}


		// MARK: - CSS Level 2 (Revision 1)

		public static var orange: RGBColor {
			return RGBColor(hex: "ffa500")!
		}


		// MARK: - CSS Color Module Level 3

		public static var aliceBlue: RGBColor {
			return RGBColor(hex: "f0f8ff")!
		}

		public static var antiqueWhite: RGBColor {
			return RGBColor(hex: "faebd7")!
		}

		public static var aquamarine: RGBColor {
			return RGBColor(hex: "7fffd4")!
		}

		public static var azure: RGBColor {
			return RGBColor(hex: "f0ffff")!
		}

		public static var beige: RGBColor {
			return RGBColor(hex: "f5f5dc")!
		}

		public static var bisque: RGBColor {
			return RGBColor(hex: "ffe4c4")!
		}

		public static var blanchedAlmond: RGBColor {
			return RGBColor(hex: "ffebcd")!
		}

		public static var blueViolet: RGBColor {
			return RGBColor(hex: "8a2be2")!
		}

		public static var brown: RGBColor {
			return RGBColor(hex: "a52a2a")!
		}

		public static var burlyWood: RGBColor {
			return RGBColor(hex: "deb887")!
		}

		public static var cadetBlue: RGBColor {
			return RGBColor(hex: "5f9ea0")!
		}

		public static var chartreuse: RGBColor {
			return RGBColor(hex: "7fff00")!
		}

		public static var chocolate: RGBColor {
			return RGBColor(hex: "d2691e")!
		}

		public static var coral: RGBColor {
			return RGBColor(hex: "ff7f50")!
		}

		public static var cornflowerBlue: RGBColor {
			return RGBColor(hex: "6495ed")!
		}

		public static var cornsilk: RGBColor {
			return RGBColor(hex: "fff8dc")!
		}

		public static var crimson: RGBColor {
			return RGBColor(hex: "dc143c")!
		}

		public static var cyan: RGBColor {
			return aqua
		}

		public static var darkBlue: RGBColor {
			return RGBColor(hex: "00008b")!
		}

		public static var darkCyan: RGBColor {
			return RGBColor(hex: "008b8b")!
		}

		public static var darkGoldenrod: RGBColor {
			return RGBColor(hex: "b8860b")!
		}

		public static var darkGray: RGBColor {
			return RGBColor(hex: "a9a9a9")!
		}

		public static var darkGreen: RGBColor {
			return RGBColor(hex: "006400")!
		}

		public static var darkGrey: RGBColor {
			return darkGray
		}

		public static var darkKhaki: RGBColor {
			return RGBColor(hex: "bdb76b")!
		}

		public static var darkMagenta: RGBColor {
			return RGBColor(hex: "8b008b")!
		}

		public static var darkOliveGreen: RGBColor {
			return RGBColor(hex: "556b2f")!
		}

		public static var darkOrange: RGBColor {
			return RGBColor(hex: "ff8c00")!
		}

		public static var darkOrchid: RGBColor {
			return RGBColor(hex: "9932cc")!
		}

		public static var darkRed: RGBColor {
			return RGBColor(hex: "8b0000")!
		}

		public static var darkSalmon: RGBColor {
			return RGBColor(hex: "e9967a")!
		}

		public static var darkSeaGreen: RGBColor {
			return RGBColor(hex: "8fbc8f")!
		}

		public static var darkSlateBlue: RGBColor {
			return RGBColor(hex: "483d8b")!
		}

		public static var darkSlateGray: RGBColor {
			return RGBColor(hex: "2f4f4f")!
		}

		public static var darkslategrey: RGBColor {
			return darkSlateGray
		}

		public static var darkTurquoise: RGBColor {
			return RGBColor(hex: "00ced1")!
		}

		public static var darkViolet: RGBColor {
			return RGBColor(hex: "9400d3")!
		}

		public static var deepPink: RGBColor {
			return RGBColor(hex: "ff1493")!
		}

		public static var deepSkyBlue: RGBColor {
			return RGBColor(hex: "00bfff")!
		}

		public static var dimGray: RGBColor {
			return RGBColor(hex: "696969")!
		}

		public static var dimGrey: RGBColor {
			return dimGray
		}

		public static var dodgerBlue: RGBColor {
			return RGBColor(hex: "1e90ff")!
		}

		public static var fireBrick: RGBColor {
			return RGBColor(hex: "b22222")!
		}

		public static var floralWhite: RGBColor {
			return RGBColor(hex: "fffaf0")!
		}

		public static var forestGreen: RGBColor {
			return RGBColor(hex: "228b22")!
		}

		public static var gainsboro: RGBColor {
			return RGBColor(hex: "dcdcdc")!
		}

		public static var ghostWhite: RGBColor {
			return RGBColor(hex: "f8f8ff")!
		}

		public static var gold: RGBColor {
			return RGBColor(hex: "ffd700")!
		}

		public static var goldenrod: RGBColor {
			return RGBColor(hex: "daa520")!
		}

		public static var greenYellow: RGBColor {
			return RGBColor(hex: "adff2f")!
		}

		public static var grey: RGBColor {
			return RGBColor(hex: "808080")!
		}

		public static var honeydew: RGBColor {
			return RGBColor(hex: "f0fff0")!
		}

		public static var hotPink: RGBColor {
			return RGBColor(hex: "ff69b4")!
		}

		public static var indianRed: RGBColor {
			return RGBColor(hex: "cd5c5c")!
		}

		public static var indigo: RGBColor {
			return RGBColor(hex: "4b0082")!
		}

		public static var ivory: RGBColor {
			return RGBColor(hex: "fffff0")!
		}

		public static var khaki: RGBColor {
			return RGBColor(hex: "f0e68c")!
		}

		public static var lavender: RGBColor {
			return RGBColor(hex: "e6e6fa")!
		}

		public static var lavenderBlush: RGBColor {
			return RGBColor(hex: "fff0f5")!
		}

		public static var lawnGreen: RGBColor {
			return RGBColor(hex: "7cfc00")!
		}

		public static var lemonChiffon: RGBColor {
			return RGBColor(hex: "fffacd")!
		}

		public static var lightBlue: RGBColor {
			return RGBColor(hex: "add8e6")!
		}

		public static var lightCoral: RGBColor {
			return RGBColor(hex: "f08080")!
		}

		public static var lightCyan: RGBColor {
			return RGBColor(hex: "e0ffff")!
		}

		public static var lightGoldenrodYellow: RGBColor {
			return RGBColor(hex: "fafad2")!
		}

		public static var lightGray: RGBColor {
			return RGBColor(hex: "d3d3d3")!
		}

		public static var lightGreen: RGBColor {
			return RGBColor(hex: "90ee90")!
		}

		public static var lightgrey: RGBColor {
			return lightGray
		}

		public static var lightPink: RGBColor {
			return RGBColor(hex: "ffb6c1")!
		}

		public static var lightSalmon: RGBColor {
			return RGBColor(hex: "ffa07a")!
		}

		public static var lightSeaGreen: RGBColor {
			return RGBColor(hex: "20b2aa")!
		}

		public static var lightskyblue: RGBColor {
			return RGBColor(hex: "87cefa")!
		}

		public static var lightSlateGray: RGBColor {
			return RGBColor(hex: "778899")!
		}

		public static var lightSlateGrey: RGBColor {
			return lightSlateGray
		}

		public static var lightSteelBlue: RGBColor {
			return RGBColor(hex: "b0c4de")!
		}

		public static var lightYellow: RGBColor {
			return RGBColor(hex: "ffffe0")!
		}

		public static var limeGreen: RGBColor {
			return RGBColor(hex: "32cd32")!
		}

		public static var linen: RGBColor {
			return RGBColor(hex: "faf0e6")!
		}

		public static var magenta: RGBColor {
			return fuchsia
		}

		public static var mediumAquamarine: RGBColor {
			return RGBColor(hex: "66cdaa")!
		}

		public static var mediumBlue: RGBColor {
			return RGBColor(hex: "0000cd")!
		}

		public static var mediumOrchid: RGBColor {
			return RGBColor(hex: "ba55d3")!
		}

		public static var mediumPurple: RGBColor {
			return RGBColor(hex: "9370db")!
		}

		public static var mediumSeaGreen: RGBColor {
			return RGBColor(hex: "3cb371")!
		}

		public static var mediumSlateBlue: RGBColor {
			return RGBColor(hex: "7b68ee")!
		}

		public static var mediumSpringGreen: RGBColor {
			return RGBColor(hex: "00fa9a")!
		}

		public static var mediumTurquoise: RGBColor {
			return RGBColor(hex: "48d1cc")!
		}

		public static var mediumVioletRed: RGBColor {
			return RGBColor(hex: "c71585")!
		}

		public static var midnightBlue: RGBColor {
			return RGBColor(hex: "191970")!
		}

		public static var mintCream: RGBColor {
			return RGBColor(hex: "f5fffa")!
		}

		public static var mistyRose: RGBColor {
			return RGBColor(hex: "ffe4e1")!
		}

		public static var moccasin: RGBColor {
			return RGBColor(hex: "ffe4b5")!
		}

		public static var navajoWhite: RGBColor {
			return RGBColor(hex: "ffdead")!
		}

		public static var oldLace: RGBColor {
			return RGBColor(hex: "fdf5e6")!
		}

		public static var oliveDrab: RGBColor {
			return RGBColor(hex: "6b8e23")!
		}

		public static var orangeRed: RGBColor {
			return RGBColor(hex: "ff4500")!
		}

		public static var orchid: RGBColor {
			return RGBColor(hex: "da70d6")!
		}

		public static var paleGoldenrod: RGBColor {
			return RGBColor(hex: "eee8aa")!
		}

		public static var paleGreen: RGBColor {
			return RGBColor(hex: "98fb98")!
		}

		public static var paleTurquoise: RGBColor {
			return RGBColor(hex: "afeeee")!
		}

		public static var paleVioletRed: RGBColor {
			return RGBColor(hex: "db7093")!
		}

		public static var papayaWhip: RGBColor {
			return RGBColor(hex: "ffefd5")!
		}

		public static var peachPuff: RGBColor {
			return RGBColor(hex: "ffdab9")!
		}

		public static var peru: RGBColor {
			return RGBColor(hex: "cd853f")!
		}

		public static var pink: RGBColor {
			return RGBColor(hex: "ffc0cb")!
		}

		public static var plum: RGBColor {
			return RGBColor(hex: "dda0dd")!
		}

		public static var powderBlue: RGBColor {
			return RGBColor(hex: "b0e0e6")!
		}

		public static var rosyBrown: RGBColor {
			return RGBColor(hex: "bc8f8f")!
		}

		public static var royalBlue: RGBColor {
			return RGBColor(hex: "4169e1")!
		}

		public static var saddleBrown: RGBColor {
			return RGBColor(hex: "8b4513")!
		}

		public static var salmon: RGBColor {
			return RGBColor(hex: "fa8072")!
		}

		public static var sandyBrown: RGBColor {
			return RGBColor(hex: "f4a460")!
		}

		public static var seaGreen: RGBColor {
			return RGBColor(hex: "2e8b57")!
		}

		public static var seaShell: RGBColor {
			return RGBColor(hex: "fff5ee")!
		}

		public static var sienna: RGBColor {
			return RGBColor(hex: "a0522d")!
		}

		public static var skyBlue: RGBColor {
			return RGBColor(hex: "87ceeb")!
		}

		public static var slateBlue: RGBColor {
			return RGBColor(hex: "6a5acd")!
		}

		public static var slateGray: RGBColor {
			return RGBColor(hex: "708090")!
		}

		public static var slateGrey: RGBColor {
			return slateGray
		}

		public static var snow: RGBColor {
			return RGBColor(hex: "fffafa")!
		}

		public static var springGreen: RGBColor {
			return RGBColor(hex: "00ff7f")!
		}

		public static var steelBlue: RGBColor {
			return RGBColor(hex: "4682b4")!
		}

		public static var tan: RGBColor {
			return RGBColor(hex: "d2b48c")!
		}

		public static var thistle: RGBColor {
			return RGBColor(hex: "d8bfd8")!
		}

		public static var tomato: RGBColor {
			return RGBColor(hex: "ff6347")!
		}

		public static var turquoise: RGBColor {
			return RGBColor(hex: "40e0d0")!
		}

		public static var violet: RGBColor {
			return RGBColor(hex: "ee82ee")!
		}

		public static var wheat: RGBColor {
			return RGBColor(hex: "f5deb3")!
		}

		public static var whiteSmoke: RGBColor {
			return RGBColor(hex: "f5f5f5")!
		}

		public static var yellowGreen: RGBColor {
			return RGBColor(hex: "9acd32")!
		}


		// MARK: - CSS Color Module Level 4

		/// See https://en.wikipedia.org/wiki/Eric_A._Meyer#Personal_life
		public static var rebeccaPurple: RGBColor {
			return RGBColor(hex: "663399")!
		}
	}
#endif
