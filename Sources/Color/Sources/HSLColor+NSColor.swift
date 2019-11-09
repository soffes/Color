#if os(OSX)
import AppKit

extension NSColor {
    public convenience init(hsl color: HSLColor, colorSpace: NSColorSpace = .genericRGB) {
        self.init(rgb: RGBColor(hslColor: color), colorSpace: colorSpace)
    }
}
#endif
