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
		public convenience init(rgb color: RGBColor, colorSpace: NSColorSpace = .genericRGB) {
			if colorSpace.colorSpaceModel != .RGB {
				fatalError("Color space must have RGB model.")
			}

			let components = [CGFloat(color.red), CGFloat(color.green), CGFloat(color.blue), 1]
			self.init(colorSpace: colorSpace, components: components, count: 4)
		}

		public convenience init?(hex: String) {
			guard let rgb = RGBColor(hex: hex) else { return nil }
			self.init(rgb: rgb)
		}

		public var hex: String {
			return RGBColor(color: self).hex
		}

		public var relativeLuminance: CGFloat {
			return CGFloat(RGBColor(color: self).relativeLuminance)
		}

		public func contrastRatio(to other: NSColor) -> CGFloat? {
			let lhs = RGBColor(color: self)
			let rhs = RGBColor(color: other)
			return CGFloat(lhs.contrastRatio(to: rhs))
		}
	}

	extension RGBColor {
		public init(color: NSColor, colorSpace: NSColorSpace = .genericRGB) {
			if colorSpace.colorSpaceModel != .RGB {
				fatalError("Color space must have RGB model.")
			}

			let convertedColor: NSColor

			if color.colorSpace == colorSpace {
				convertedColor = color
			} else if let rgb = color.usingColorSpace(colorSpace) {
				convertedColor = rgb
			} else {
				fatalError("Failed to convert \(color) to RGBColor using \(colorSpace).")
			}

			var red: CGFloat = 0
			var green: CGFloat = 0
			var blue: CGFloat = 0
			convertedColor.getRed(&red, green: &green, blue: &blue, alpha: nil)

			self.init(red: Double(red), green: Double(green), blue: Double(blue))
		}
	}
#endif
