//
//  RGBColor+SystemColor.swift
//  Color
//
//  Created by Sam Soffes on 8/1/17.
//  Copyright © 2017 Sam Soffes. All rights reserved.
//

#if os(OSX) || os(iOS) || os(watchOS) || os(tvOS)
	import QuartzCore
	
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
