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
