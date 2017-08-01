//
//  HSLColor+UIColor.swift
//  Color
//
//  Created by Sam Soffes on 8/1/17.
//  Copyright © 2017 Sam Soffes. All rights reserved.
//

#if os(iOS) || os(watchOS) || os(tvOS)
	import UIKit

	extension UIColor {
		public convenience init(hsl color: HSLColor) {
			self.init(rgb: RGBColor(hslColor: color))
		}
	}
#endif
