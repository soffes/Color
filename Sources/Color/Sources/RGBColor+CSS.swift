#if !os(Linux)
/// From https://developer.mozilla.org/en-US/docs/Web/CSS/color_value
extension RGBColor {

    // MARK: - CSS Level 1

    public static var black: RGBColor {
        RGBColor(hex: "000000")!
    }

    public static var silver: RGBColor {
        RGBColor(hex: "c0c0c0")!
    }

    public static var gray: RGBColor {
        RGBColor(hex: "808080")!
    }

    public static var white: RGBColor {
        RGBColor(hex: "ffffff")!
    }

    public static var maroon: RGBColor {
        RGBColor(hex: "800000")!
    }

    public static var red: RGBColor {
        RGBColor(hex: "ff0000")!
    }

    public static var purple: RGBColor {
        RGBColor(hex: "800080")!
    }

    public static var fuchsia: RGBColor {
        RGBColor(hex: "ff00ff")!
    }

    public static var green: RGBColor {
        RGBColor(hex: "008000")!
    }

    public static var lime: RGBColor {
        RGBColor(hex: "00ff00")!
    }

    public static var olive: RGBColor {
        RGBColor(hex: "808000")!
    }

    public static var yellow: RGBColor {
        RGBColor(hex: "ffff00")!
    }

    public static var navy: RGBColor {
        RGBColor(hex: "000080")!
    }

    public static var blue: RGBColor {
        RGBColor(hex: "0000ff")!
    }

    public static var teal: RGBColor {
        RGBColor(hex: "008080")!
    }

    public static var aqua: RGBColor {
        RGBColor(hex: "00ffff")!
    }


    // MARK: - CSS Level 2 (Revision 1)

    public static var orange: RGBColor {
        RGBColor(hex: "ffa500")!
    }


    // MARK: - CSS Color Module Level 3

    public static var aliceBlue: RGBColor {
        RGBColor(hex: "f0f8ff")!
    }

    public static var antiqueWhite: RGBColor {
        RGBColor(hex: "faebd7")!
    }

    public static var aquamarine: RGBColor {
        RGBColor(hex: "7fffd4")!
    }

    public static var azure: RGBColor {
        RGBColor(hex: "f0ffff")!
    }

    public static var beige: RGBColor {
        RGBColor(hex: "f5f5dc")!
    }

    public static var bisque: RGBColor {
        RGBColor(hex: "ffe4c4")!
    }

    public static var blanchedAlmond: RGBColor {
        RGBColor(hex: "ffebcd")!
    }

    public static var blueViolet: RGBColor {
        RGBColor(hex: "8a2be2")!
    }

    public static var brown: RGBColor {
        RGBColor(hex: "a52a2a")!
    }

    public static var burlyWood: RGBColor {
        RGBColor(hex: "deb887")!
    }

    public static var cadetBlue: RGBColor {
        RGBColor(hex: "5f9ea0")!
    }

    public static var chartreuse: RGBColor {
        RGBColor(hex: "7fff00")!
    }

    public static var chocolate: RGBColor {
        RGBColor(hex: "d2691e")!
    }

    public static var coral: RGBColor {
        RGBColor(hex: "ff7f50")!
    }

    public static var cornflowerBlue: RGBColor {
        RGBColor(hex: "6495ed")!
    }

    public static var cornsilk: RGBColor {
        RGBColor(hex: "fff8dc")!
    }

    public static var crimson: RGBColor {
        RGBColor(hex: "dc143c")!
    }

    public static var cyan: RGBColor {
        aqua
    }

    public static var darkBlue: RGBColor {
        RGBColor(hex: "00008b")!
    }

    public static var darkCyan: RGBColor {
        RGBColor(hex: "008b8b")!
    }

    public static var darkGoldenrod: RGBColor {
        RGBColor(hex: "b8860b")!
    }

    public static var darkGray: RGBColor {
        RGBColor(hex: "a9a9a9")!
    }

    public static var darkGreen: RGBColor {
        RGBColor(hex: "006400")!
    }

    public static var darkGrey: RGBColor {
        darkGray
    }

    public static var darkKhaki: RGBColor {
        RGBColor(hex: "bdb76b")!
    }

    public static var darkMagenta: RGBColor {
        RGBColor(hex: "8b008b")!
    }

    public static var darkOliveGreen: RGBColor {
        RGBColor(hex: "556b2f")!
    }

    public static var darkOrange: RGBColor {
        RGBColor(hex: "ff8c00")!
    }

    public static var darkOrchid: RGBColor {
        RGBColor(hex: "9932cc")!
    }

    public static var darkRed: RGBColor {
        RGBColor(hex: "8b0000")!
    }

    public static var darkSalmon: RGBColor {
        RGBColor(hex: "e9967a")!
    }

    public static var darkSeaGreen: RGBColor {
        RGBColor(hex: "8fbc8f")!
    }

    public static var darkSlateBlue: RGBColor {
        RGBColor(hex: "483d8b")!
    }

    public static var darkSlateGray: RGBColor {
        RGBColor(hex: "2f4f4f")!
    }

    public static var darkslategrey: RGBColor {
        darkSlateGray
    }

    public static var darkTurquoise: RGBColor {
        RGBColor(hex: "00ced1")!
    }

    public static var darkViolet: RGBColor {
        RGBColor(hex: "9400d3")!
    }

    public static var deepPink: RGBColor {
        RGBColor(hex: "ff1493")!
    }

    public static var deepSkyBlue: RGBColor {
        RGBColor(hex: "00bfff")!
    }

    public static var dimGray: RGBColor {
        RGBColor(hex: "696969")!
    }

    public static var dimGrey: RGBColor {
        dimGray
    }

    public static var dodgerBlue: RGBColor {
        RGBColor(hex: "1e90ff")!
    }

    public static var fireBrick: RGBColor {
        RGBColor(hex: "b22222")!
    }

    public static var floralWhite: RGBColor {
        RGBColor(hex: "fffaf0")!
    }

    public static var forestGreen: RGBColor {
        RGBColor(hex: "228b22")!
    }

    public static var gainsboro: RGBColor {
        RGBColor(hex: "dcdcdc")!
    }

    public static var ghostWhite: RGBColor {
        RGBColor(hex: "f8f8ff")!
    }

    public static var gold: RGBColor {
        RGBColor(hex: "ffd700")!
    }

    public static var goldenrod: RGBColor {
        RGBColor(hex: "daa520")!
    }

    public static var greenYellow: RGBColor {
        RGBColor(hex: "adff2f")!
    }

    public static var grey: RGBColor {
        RGBColor(hex: "808080")!
    }

    public static var honeydew: RGBColor {
        RGBColor(hex: "f0fff0")!
    }

    public static var hotPink: RGBColor {
        RGBColor(hex: "ff69b4")!
    }

    public static var indianRed: RGBColor {
        RGBColor(hex: "cd5c5c")!
    }

    public static var indigo: RGBColor {
        RGBColor(hex: "4b0082")!
    }

    public static var ivory: RGBColor {
        RGBColor(hex: "fffff0")!
    }

    public static var khaki: RGBColor {
        RGBColor(hex: "f0e68c")!
    }

    public static var lavender: RGBColor {
        RGBColor(hex: "e6e6fa")!
    }

    public static var lavenderBlush: RGBColor {
        RGBColor(hex: "fff0f5")!
    }

    public static var lawnGreen: RGBColor {
        RGBColor(hex: "7cfc00")!
    }

    public static var lemonChiffon: RGBColor {
        RGBColor(hex: "fffacd")!
    }

    public static var lightBlue: RGBColor {
        RGBColor(hex: "add8e6")!
    }

    public static var lightCoral: RGBColor {
        RGBColor(hex: "f08080")!
    }

    public static var lightCyan: RGBColor {
        RGBColor(hex: "e0ffff")!
    }

    public static var lightGoldenrodYellow: RGBColor {
        RGBColor(hex: "fafad2")!
    }

    public static var lightGray: RGBColor {
        RGBColor(hex: "d3d3d3")!
    }

    public static var lightGreen: RGBColor {
        RGBColor(hex: "90ee90")!
    }

    public static var lightgrey: RGBColor {
        lightGray
    }

    public static var lightPink: RGBColor {
        RGBColor(hex: "ffb6c1")!
    }

    public static var lightSalmon: RGBColor {
        RGBColor(hex: "ffa07a")!
    }

    public static var lightSeaGreen: RGBColor {
        RGBColor(hex: "20b2aa")!
    }

    public static var lightskyblue: RGBColor {
        RGBColor(hex: "87cefa")!
    }

    public static var lightSlateGray: RGBColor {
        RGBColor(hex: "778899")!
    }

    public static var lightSlateGrey: RGBColor {
        lightSlateGray
    }

    public static var lightSteelBlue: RGBColor {
        RGBColor(hex: "b0c4de")!
    }

    public static var lightYellow: RGBColor {
        RGBColor(hex: "ffffe0")!
    }

    public static var limeGreen: RGBColor {
        RGBColor(hex: "32cd32")!
    }

    public static var linen: RGBColor {
        RGBColor(hex: "faf0e6")!
    }

    public static var magenta: RGBColor {
        fuchsia
    }

    public static var mediumAquamarine: RGBColor {
        RGBColor(hex: "66cdaa")!
    }

    public static var mediumBlue: RGBColor {
        RGBColor(hex: "0000cd")!
    }

    public static var mediumOrchid: RGBColor {
        RGBColor(hex: "ba55d3")!
    }

    public static var mediumPurple: RGBColor {
        RGBColor(hex: "9370db")!
    }

    public static var mediumSeaGreen: RGBColor {
        RGBColor(hex: "3cb371")!
    }

    public static var mediumSlateBlue: RGBColor {
        RGBColor(hex: "7b68ee")!
    }

    public static var mediumSpringGreen: RGBColor {
        RGBColor(hex: "00fa9a")!
    }

    public static var mediumTurquoise: RGBColor {
        RGBColor(hex: "48d1cc")!
    }

    public static var mediumVioletRed: RGBColor {
        RGBColor(hex: "c71585")!
    }

    public static var midnightBlue: RGBColor {
        RGBColor(hex: "191970")!
    }

    public static var mintCream: RGBColor {
        RGBColor(hex: "f5fffa")!
    }

    public static var mistyRose: RGBColor {
        RGBColor(hex: "ffe4e1")!
    }

    public static var moccasin: RGBColor {
        RGBColor(hex: "ffe4b5")!
    }

    public static var navajoWhite: RGBColor {
        RGBColor(hex: "ffdead")!
    }

    public static var oldLace: RGBColor {
        RGBColor(hex: "fdf5e6")!
    }

    public static var oliveDrab: RGBColor {
        RGBColor(hex: "6b8e23")!
    }

    public static var orangeRed: RGBColor {
        RGBColor(hex: "ff4500")!
    }

    public static var orchid: RGBColor {
        RGBColor(hex: "da70d6")!
    }

    public static var paleGoldenrod: RGBColor {
        RGBColor(hex: "eee8aa")!
    }

    public static var paleGreen: RGBColor {
        RGBColor(hex: "98fb98")!
    }

    public static var paleTurquoise: RGBColor {
        RGBColor(hex: "afeeee")!
    }

    public static var paleVioletRed: RGBColor {
        RGBColor(hex: "db7093")!
    }

    public static var papayaWhip: RGBColor {
        RGBColor(hex: "ffefd5")!
    }

    public static var peachPuff: RGBColor {
        RGBColor(hex: "ffdab9")!
    }

    public static var peru: RGBColor {
        RGBColor(hex: "cd853f")!
    }

    public static var pink: RGBColor {
        RGBColor(hex: "ffc0cb")!
    }

    public static var plum: RGBColor {
        RGBColor(hex: "dda0dd")!
    }

    public static var powderBlue: RGBColor {
        RGBColor(hex: "b0e0e6")!
    }

    public static var rosyBrown: RGBColor {
        RGBColor(hex: "bc8f8f")!
    }

    public static var royalBlue: RGBColor {
        RGBColor(hex: "4169e1")!
    }

    public static var saddleBrown: RGBColor {
        RGBColor(hex: "8b4513")!
    }

    public static var salmon: RGBColor {
        RGBColor(hex: "fa8072")!
    }

    public static var sandyBrown: RGBColor {
        RGBColor(hex: "f4a460")!
    }

    public static var seaGreen: RGBColor {
        RGBColor(hex: "2e8b57")!
    }

    public static var seaShell: RGBColor {
        RGBColor(hex: "fff5ee")!
    }

    public static var sienna: RGBColor {
        RGBColor(hex: "a0522d")!
    }

    public static var skyBlue: RGBColor {
        RGBColor(hex: "87ceeb")!
    }

    public static var slateBlue: RGBColor {
        RGBColor(hex: "6a5acd")!
    }

    public static var slateGray: RGBColor {
        RGBColor(hex: "708090")!
    }

    public static var slateGrey: RGBColor {
        slateGray
    }

    public static var snow: RGBColor {
        RGBColor(hex: "fffafa")!
    }

    public static var springGreen: RGBColor {
        RGBColor(hex: "00ff7f")!
    }

    public static var steelBlue: RGBColor {
        RGBColor(hex: "4682b4")!
    }

    public static var tan: RGBColor {
        RGBColor(hex: "d2b48c")!
    }

    public static var thistle: RGBColor {
        RGBColor(hex: "d8bfd8")!
    }

    public static var tomato: RGBColor {
        RGBColor(hex: "ff6347")!
    }

    public static var turquoise: RGBColor {
        RGBColor(hex: "40e0d0")!
    }

    public static var violet: RGBColor {
        RGBColor(hex: "ee82ee")!
    }

    public static var wheat: RGBColor {
        RGBColor(hex: "f5deb3")!
    }

    public static var whiteSmoke: RGBColor {
        RGBColor(hex: "f5f5f5")!
    }

    public static var yellowGreen: RGBColor {
        RGBColor(hex: "9acd32")!
    }


    // MARK: - CSS Color Module Level 4

    /// See https://en.wikipedia.org/wiki/Eric_A._Meyer#Personal_life
    public static var rebeccaPurple: RGBColor {
        RGBColor(hex: "663399")!
    }
}
#endif
