//
//  SystemColor.swift
//  Color
//
//  Created by Sam Soffes on 7/18/17.
//  Copyright © 2017 Sam Soffes. All rights reserved.
//

#if os(OSX)
	import AppKit

	extension NSColor {
		public convenience init(rgbColor: RGBColor, colorSpace: NSColorSpace = .genericRGB) {
			if colorSpace.colorSpaceModel != .RGB {
				fatalError("Color space must have RGB model.")
			}

			let components = [CGFloat(rgbColor.red), CGFloat(rgbColor.green), CGFloat(rgbColor.blue), 1]
			self.init(colorSpace: colorSpace, components: components, count: 4)
		}
	}

	extension RGBColor {
		public init?(color: NSColor, colorSpace: NSColorSpace = .genericRGB) {
			if colorSpace.colorSpaceModel != .RGB {
				fatalError("Color space must have RGB model.")
			}

			let convertedColor: NSColor

			if color.colorSpace == colorSpace {
				convertedColor = color
			} else if let rgb = color.usingColorSpace(colorSpace) {
				convertedColor = rgb
			} else {
				return nil
			}

			var red: CGFloat = 0
			var green: CGFloat = 0
			var blue: CGFloat = 0
			convertedColor.getRed(&red, green: &green, blue: &blue, alpha: nil)

			self.init(red: Double(red), green: Double(green), blue: Double(blue))
		}
	}
#endif
