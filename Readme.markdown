# Color

[![CocoaPods Compatible](https://img.shields.io/cocoapods/v/Color.svg)](https://img.shields.io/cocoapods/v/Color.svg)
[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![Platform](https://img.shields.io/cocoapods/p/Color.svg?style=flat)](http://cocoadocs.org/docsets/Color)

Color utilities in pure Swift for macOS, iOS, watchOS, and tvOS. Color supports Carthage, CocoaPods, and Swift Package Manager.

Color was abstracted from [Contrast](https://usecontrast.com), a macOS app for checking designs for accessible color combinations.


## Installation

### Carthage

TAdd the following to your Cartfile:

```ruby
github "soffes/Color"
```


### CocoaPods

Add the following to your Podfile:

```ruby
pod 'Color'
```

### Swift Package Manager

Add the following to your `dependencies` in your Package.swift:

```swift
.Package(url: "https://github.com/soffes/Color.git", minorVersion: 1)
```


## Usage

Color provides structs for different color models. Currently only RGB and HSL are supported. Most color calculations are specific to a color model. For example, darkening a color is only available for HSL colors and not RGB colors. If you'd like to darken an RGB color, you’ll need to convert to HSL first. Here’s an example:

```
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

RGB colors also have [WCAG 2.0](https://www.w3.org/TR/WCAG20) calculations.


## Thanks

Thanks to [color](https://github.com/Qix-/color) & [color-convert](https://github.com/Qix-/color-convert) for inspiration.
