#if os(Linux)
    import Glibc
#else
    import Darwin
#endif

extension RGBColor {
    /// Initialize an RGB color with a color temperature in Kelvin.
    ///
    /// From http://www.tannerhelland.com/4435/convert-temperature-rgb-algorithm-code/
    ///
    /// - parameter colorTemperature: temperature in Kelvin. Expected between 1000 and 40,0000
    public init(colorTemperature: Double) {
        precondition(colorTemperature >= 1000 && colorTemperature <= 40000, "Expected input to be between 1000 and 40,000")

        let temperature = colorTemperature / 100

        // Red
        if temperature <= 66 {
            self.red = 1
        } else {
            var red = temperature - 60
            red = 329.698727446 * pow(red, -0.1332047592) / 255
            self.red = min(1, max(0, red))
        }

        // Green
        if temperature <= 66 {
            var green = temperature
            green = (99.4708025861 * log(green) - 161.1195681661) / 255
            self.green = min(1, max(0, green))
        } else {
            var green = temperature - 60
            green = 288.1221695283 * pow(green, -0.0755148492) / 255
            self.green = min(1, max(0, green))
        }

        // Blue
        if temperature >= 66 {
            self.blue = 1
        } else {
            if temperature <= 19 {
                self.blue = 0
            } else {
                var blue = temperature - 10
                blue = (138.5177312231 * log(blue) - 305.0447927307) / 255
                self.blue = min(1, max(0, blue))
            }
        }
    }
}
