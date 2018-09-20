#if os(iOS) || os(watchOS) || os(tvOS)
	import UIKit

	extension UIColor {
		public convenience init(hsl color: HSLColor) {
			self.init(rgb: RGBColor(hslColor: color))
		}
	}
#endif
