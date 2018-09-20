//
//  HSLColor+NSColor.swift
//  Color
//
//  Created by Sam Soffes on 8/1/17.
//  Copyright © 2017 Sam Soffes. All rights reserved.
//

#if os(OSX)
	import AppKit

	extension NSColor {
		public convenience init(hsl color: HSLColor, colorSpace: NSColorSpace = .genericRGB) {
			self.init(rgb: RGBColor(hslColor: color), colorSpace: colorSpace)
		}
	}
#endif
