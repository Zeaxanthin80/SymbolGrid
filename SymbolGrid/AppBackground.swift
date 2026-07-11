import SwiftUI

struct AppBackground: View {
    var body: some View {
        LinearGradient(
            colors: [
                AppBackgroundColors.start,
                AppBackgroundColors.middle,
                AppBackgroundColors.end
            ],
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .ignoresSafeArea()
    }
}

enum AppBackgroundColors {
    // Tries to load from asset catalog; falls back to the existing RGBs if missing
    static var start: Color {
        Color("AppBackgroundStart", bundle: .main) ?? Color(red: 1.0, green: 0.98, blue: 0.85)
    }
    static var middle: Color {
        Color("AppBackgroundMiddle", bundle: .main) ?? Color(red: 1.0, green: 0.90, blue: 0.60)
    }
    static var end: Color {
        Color("AppBackgroundEnd", bundle: .main) ?? Color(red: 1.0, green: 0.75, blue: 0.40)
    }
}

#Preview("AppBackground Preview") {
    AppBackground()
}
