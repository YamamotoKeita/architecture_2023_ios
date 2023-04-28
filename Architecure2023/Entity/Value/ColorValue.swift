import Foundation

struct ColorValue {
    let red: Double
    let green: Double
    let blue: Double
    let alpha: Double

    init(hex: String, alpha: Double = 1.0) {
        self.alpha = alpha

        var hexValue = hex
        if hexValue.hasPrefix("#") {
            hexValue.remove(at: hexValue.startIndex)
        }

        guard hexValue.count == 6 else {
            red = 0
            green = 0
            blue = 0
            return
        }

        var rgb: UInt64 = 0
        Scanner(string: hexValue).scanHexInt64(&rgb)

        self.red = Double((rgb & 0xFF0000) >> 16) / 255.0
        self.green = Double((rgb & 0x00FF00) >> 8) / 255.0
        self.blue = Double(rgb & 0x0000FF) / 255.0
    }
}
