//
//  ColorScheme.swift
//  testingApp
//
//  Created by Jessy  Martinez  on 3/7/25.
//
import SwiftUI

struct ColorScheme {
    let primary : Color
    let secondary : Color
    let button : Color
    let background : Color
}

extension ColorScheme {
    static let dark = ColorScheme(
        primary: Color(hex: "4477CE"),
        secondary: Color(hex: "8CABFF"),
        button: Color(hex:"03C988:"),
        background: Color(hex: "512B81")
    )
    
    static let light = ColorScheme(
        primary: Color (hex: "4477CE"),
        secondary: Color (hex: "8CABFF"),
        button: Color(hex:"4477CE"),
        background: Color(hex: "03C988")
    )
}

struct ColorSchemeKey: EnvironmentKey{
    static let defaultValue: ColorScheme = .dark
}

extension EnvironmentValues {
    var colorScheme: ColorScheme{
        get {self[ColorSchemeKey.self]}
        set {self[ColorSchemeKey.self] = newValue}
    }
}

extension Color {
    init(hex:String){
        var hexString = hex
        if hexString.hasPrefix("#") {
            hexString.removeFirst()
        }
        let scanner = Scanner(string: hexString)
        var rgbValue: UInt64 = 0
        scanner.currentIndex = hexString.startIndex
        scanner.scanHexInt64(&rgbValue)
        let red = Double((rgbValue & 0xff0000) >> 16) / 255.0
        let green = Double((rgbValue & 0x00ff00) >> 8) / 255.0
        let blue = Double(rgbValue & 0x0000ff) / 255.0
        self.init(red: red, green: green, blue: blue)
    }
}
