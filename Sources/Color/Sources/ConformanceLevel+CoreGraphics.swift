#if os(OSX) || os(iOS) || os(watchOS) || os(tvOS)
#if os(iOS) || os(watchOS) || os(tvOS)
    import CoreGraphics
#else
    import QuartzCore
#endif
	
	extension ConformanceLevel {
		public init(contrastRatio: CGFloat) {
			self.init(contrastRatio: Double(contrastRatio))
		}
	}
#endif
