//
//  Color+Meowl.swift
//  Meowl
//
//  Created by Harshika Sharma on 24/06/26.
//


import SwiftUI

// MARK: - Meowl Design System Colors
extension Color {
    static let meowlPrimary = Color(hex: "ad2c50")
    static let meowlPrimaryContainer = Color(hex: "ff6b8d")
    static let meowlOnPrimaryContainer = Color(hex: "6e0029")
    
    static let meowlSecondary = Color(hex: "674bb5")
    static let meowlSecondaryContainer = Color(hex: "ab8ffe")
    static let meowlOnSecondaryContainer = Color(hex: "3f1e8c")
    
    static let meowlTertiary = Color(hex: "006c4c")
    static let meowlTertiaryContainer = Color(hex: "4baf86")
    
    static let meowlSurface = Color(hex: "fff8f7")
    static let meowlSurfaceDim = Color(hex: "ebd5d7")
    static let meowlSurfaceBright = Color(hex: "fff8f7")
    
    static let meowlSurfaceLowest = Color(hex: "ffffff")
    static let meowlSurfaceLow = Color(hex: "fff0f1")
    static let meowlSurfaceMedium = Color(hex: "ffe9eb")
    static let meowlSurfaceHigh = Color(hex: "fae3e5")
    static let meowlSurfaceHighest = Color(hex: "f4dddf")
    
    static let meowlOnSurface = Color(hex: "25181a")
    static let meowlOnSurfaceVariant = Color(hex: "574144")
    static let meowlOutline = Color(hex: "8b7074")
    static let meowlOutlineVariant = Color(hex: "debfc3")
    static let meowlBackground = Color(hex: "fff8f7")
    
    // Helper to initialize Color from HEX
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 1)
        }
        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue: Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}
