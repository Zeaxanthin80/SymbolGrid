//
//  AppBackgroundPicker.swift
//  SymbolGrid
//
//  Created by user on 7/12/26.
//

import SwiftUI

struct AppBackgroundPicker: View {
    var body: some View {
        LinearGradient(
            colors: [
                AppBackgroundPickerColors.start,
                AppBackgroundPickerColors.middle,
                AppBackgroundPickerColors.end
            ],
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .ignoresSafeArea()
    }
}

enum AppBackgroundPickerColors {
    static var start: Color {
        Color.namedOrFallback("AppBackgroundPickerStart", fallback: Color(red: 1.0, green: 0.98, blue: 0.85))
    }
    static var middle: Color {
        Color.namedOrFallback("AppBackgroundPickerStart", fallback: Color(red: 1.0, green: 0.90, blue: 0.60))
    }
    static var end: Color {
        Color.namedOrFallback("AppBackgroundEnd", fallback: Color(red: 1.0, green: 0.75, blue: 0.40))
    }
}

private extension Color {
    static func namedOrFallback(_ name: String, fallback: Color) -> Color {
        #if canImport(UIKit)
        if let uiColor = UIColor(named: name) {
            return Color(uiColor)
        }
        #elseif canImport(AppKit)
        if let nsColor = NSColor(named: NSColor.Name(name)) {
            return Color(nsColor)
        }
        #endif
        return fallback
    }
}

#Preview("AppBackground Preview") {
    AppBackgroundPicker()
}
