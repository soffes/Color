//
//  Color.swift
//  Color
//
//  Created by Sam Soffes on 7/18/17.
//  Copyright © 2017 Sam Soffes. All rights reserved.
//

public protocol Color {
	var red: Double { get }
	var green: Double { get }
	var blue: Double { get }
	var alpha: Double { get }

	init(red: Double, green: Double, blue: Double, alpha: Double)
}


extension Color {
	public init(white: Double, alpha: Double = 1) {
		self.init(red: white, green: white, blue: white, alpha: alpha)
	}
}
