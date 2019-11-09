#if os(OSX) || os(iOS) || os(watchOS) || os(tvOS)
#if os(iOS) || os(watchOS) || os(tvOS)
import CoreGraphics
#else
import QuartzCore
#endif

extension HSLColor {
    public init(_ color: SystemColorType) {
        // TODO: Do direct conversion
        self.init(rgb: RGBColor(color))
    }
}


extension SystemColorType {
    public func lightening(by ratio: CGFloat = 0.01) -> SystemColorType {
        SystemColorType(hsl: HSLColor(self).lightening(by: Double(ratio)))
    }

    public func darkening(by ratio: CGFloat = 0.01) -> SystemColorType {
        SystemColorType(hsl: HSLColor(self).darkening(by: Double(ratio)))
    }

    public func saturating(by ratio: CGFloat = 0.01) -> SystemColorType {
        SystemColorType(hsl: HSLColor(self).saturating(by: Double(ratio)))
    }

    public func desaturating(by ratio: CGFloat = 0.01) -> SystemColorType {
        SystemColorType(hsl: HSLColor(self).desaturating(by: Double(ratio)))
    }
}
#endif
