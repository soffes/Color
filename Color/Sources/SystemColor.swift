//
//  SystemColor.swift
//  Color
//
//  Created by Sam Soffes on 7/18/17.
//  Copyright © 2017 Sam Soffes. All rights reserved.
//

#if os(OSX)
	import AppKit
	public typealias SystemColorType = NSColor
#elseif os(iOS) || os(watchOS) || os(tvOS)
	import UIKit
	public typealias SystemColorType = UIColor
#endif
