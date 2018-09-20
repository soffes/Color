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
			return RGBColor(self).hex
		}

		public var relativeLuminance: CGFloat {
			return CGFloat(RGBColor(self).relativeLuminance)
		}

		public func contrastRatio(to other: SystemColorType) -> CGFloat {
			let lhs = RGBColor(self)
			let rhs = RGBColor(other)
			return CGFloat(lhs.contrastRatio(to: rhs))
		}

		public var yiqLuma: CGFloat {
			return CGFloat(RGBColor(self).yiqLuma)
		}

		public var isDark: Bool {
			return RGBColor(self).isDark
		}
	}
#endif
