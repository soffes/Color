//
//  ConformanceLevel+CoreGraphics.swift
//  Color
//
//  Created by Sam Soffes on 8/1/17.
//  Copyright © 2017 Sam Soffes. All rights reserved.
//

#if os(OSX) || os(iOS) || os(watchOS) || os(tvOS)
	import QuartzCore
	
	extension ConformanceLevel {
		public init(contrastRatio: CGFloat) {
			self.init(contrastRatio: Double(contrastRatio))
		}
	}
#endif
