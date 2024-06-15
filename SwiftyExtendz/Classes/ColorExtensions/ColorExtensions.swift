import SwiftUI

public class ColorExtensions {
    public static func hexStringToRGB(_ hexString: String, opacity: Double? = 1.0) -> Color {
        let sanitizedHexString = hexString.trimmingCharacters(in: .init(charactersIn: "#"))
        guard sanitizedHexString.count == 6 else {
            return Color.red
        }
        
        let redString = String(sanitizedHexString.prefix(2))
        let greenString = String(sanitizedHexString.dropFirst(2).prefix(2))
        let blueString = String(sanitizedHexString.suffix(2))
        
        guard let redValue = Int(redString, radix: 16),
              let greenValue = Int(greenString, radix: 16),
              let blueValue = Int(blueString, radix: 16)
        else {
            return Color.red
        }
        
        return Color(red: Double(redValue)/255, green: Double(greenValue)/255, blue: Double(blueValue)/255, opacity: opacity ?? 1.0)
    }
}

public class UIColorExtensions {
    public static func hexStringToRGB(_ hexString: String, opacity: Double? = 1.0) -> UIColor {
        let sanitizedHexString = hexString.trimmingCharacters(in: .init(charactersIn: "#"))
        guard sanitizedHexString.count == 6 else {
            return UIColor.red
        }
        
        let redString = String(sanitizedHexString.prefix(2))
        let greenString = String(sanitizedHexString.dropFirst(2).prefix(2))
        let blueString = String(sanitizedHexString.suffix(2))
        
        guard let redValue = Int(redString, radix: 16),
              let greenValue = Int(greenString, radix: 16),
              let blueValue = Int(blueString, radix: 16)
        else {
            return UIColor.red
        }
        
        return UIColor(red: Double(redValue)/255, green: Double(greenValue)/255, blue: Double(blueValue)/255, alpha: opacity ?? 1.0)
    }
}


extension UINavigationBarAppearance {
    static func customAppearance(_ hexString: String, opacity: Double? = 1.0) -> UINavigationBarAppearance {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColorExtensions.hexStringToRGB(hexString, opacity: opacity ?? 1)
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        return appearance
    }
}

