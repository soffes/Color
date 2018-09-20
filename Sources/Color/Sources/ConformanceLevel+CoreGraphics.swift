#if os(OSX) || os(iOS) || os(watchOS) || os(tvOS)
	import QuartzCore
	
	extension ConformanceLevel {
		public init(contrastRatio: CGFloat) {
			self.init(contrastRatio: Double(contrastRatio))
		}
	}
#endif
