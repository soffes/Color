#if os(OSX) || os(iOS) || os(watchOS) || os(tvOS)
#if os(iOS) || os(watchOS) || os(tvOS)
import CoreGraphics
#else
import QuartzCore
#endif

extension SystemColorType {
    public convenience init?(hex: String) {
        guard let rgb = RGBColor(hex: hex) else { return nil }
        self.init(rgb: rgb)
    }

    public var hex: String {
        RGBColor(self).hex
    }

    public var relativeLuminance: CGFloat {
        CGFloat(RGBColor(self).relativeLuminance)
    }

    public func contrastRatio(to other: SystemColorType) -> CGFloat {
        let lhs = RGBColor(self)
        let rhs = RGBColor(other)
        return CGFloat(lhs.contrastRatio(to: rhs))
    }

    public var yiqLuma: CGFloat {
        CGFloat(RGBColor(self).yiqLuma)
    }

    public var isDark: Bool {
        RGBColor(self).isDark
    }
}
#endif
