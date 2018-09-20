# Color

[![Version](https://img.shields.io/github/release/soffes/Color.svg)](https://github.com/soffes/Color/releases)
[![Build Status](https://travis-ci.org/soffes/Color.svg?branch=master)](https://travis-ci.org/soffes/Color)
![Swift Version](https://img.shields.io/badge/swift-4.2-orange.svg)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

Color utilities in pure Swift for macOS, iOS, watchOS, and tvOS. Color supports Carthage and Swift Package Manager. It is also [tested](https://travis-ci.org/soffes/Color) on Linux.

**Color was abstracted from [Contrast](https://usecontrast.com), a macOS app for checking designs for accessible color combinations.**


## Installation

### Carthage

Add the following to your Cartfile:

```ruby
github "soffes/Color"
```

### Swift Package Manager

Add the following to your `dependencies` in your Package.swift:

```swift
.Package(url: "https://github.com/soffes/Color.git", minorVersion: 1)
```


## Usage

Color provides structs for different color models. Currently only RGB and HSL are supported. Most color calculations are specific to a color model. For example, darkening a color is only available for HSL colors and not RGB colors. If you'd like to darken an RGB color, you’ll need to convert to HSL first. Here’s an example:

```swift
let rgb = RGBColor(red: 1, green: 0, blue: 0)
let hsl = HSLColor(rgb: rgb)
let darkerRed = hsl.darkening()
```

Note that Color’s structs don’t support alpha since that isn’t used in any of the color calculations. This may be added in the future.

Hex conversions are only available for RGB colors.

```swift
let rgb = RGBColor(hex: "0f0")!
rgb.hex // "00ff00"
```


### NSColor & UIColor

There are convenience methods on `NSColor` & `UIColor` if you are working in a Cocoa application. Each color model (`RGBColor`, `HSLColor`, etc.) has an extension for `SystemColorType` which is either `NSColor` or `UIColor` depending on the platform. Here's a few examples:

```swift
UIColor.red.darkening()
UIColor.green.desaturating()
NSColor.blue.isDark
```


### WCAG

RGB colors also have [WCAG 2.0](https://www.w3.org/TR/WCAG20) calculations. First, calculate a contrast ratio:

```swift
let color1 = RGBColor(red: 170.0 / 255.0, green: 204.0 / 255.0, blue: 1)
let color2 = RGBColor(red: 34.0 / 255.0, green: 34.0 / 255.0, blue: 51.0 / 255.0)
let contrastRatio = color1.contrastRatio(to: color2) // 9.51
```

Now, you can check the conformance level:

```swift
ConformanceLevel(contrastRatio: contrastRatio) // .aaa
```


## Thanks

Thanks to [color](https://github.com/Qix-/color) & [color-convert](https://github.com/Qix-/color-convert) for inspiration.
