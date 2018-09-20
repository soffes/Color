#if os(OSX)
	import AppKit
	public typealias SystemColorType = NSColor
#elseif os(iOS) || os(watchOS) || os(tvOS)
	import UIKit
	public typealias SystemColorType = UIColor
#endif
