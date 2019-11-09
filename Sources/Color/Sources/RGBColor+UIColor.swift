#if os(iOS) || os(watchOS) || os(tvOS)
import UIKit

extension RGBColor {
    public init(_ color: UIColor) {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        color.getRed(&red, green: &green, blue: &blue, alpha: nil)

        self.init(red: Double(red), green: Double(green), blue: Double(blue))
    }
}


extension UIColor {
    public convenience init(rgb color: RGBColor) {
        self.init(red: CGFloat(color.red), green: CGFloat(color.green), blue: CGFloat(color.blue), alpha: 1)
    }
}
#endif
