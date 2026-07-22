//
//  SymbolGridApp.swift
//  SymbolGrid
//
//  Created by Jose Marquez on 7/11/26.
//  This project is from the Apple Sample Apps Tutorial
//  https://developer.apple.com/tutorials/sample-apps/editinggrids
//

import SwiftUI

@main
struct SymbolGridApp: App {
    var body: some Scene {
        WindowGroup {
            ZStack {
                AppBackground()
                NavigationStack {
                    SymbolGrid()
                }
                // .toolbarBackground(.hidden, for: .navigationBar)
                //   .toolbarBackgroundVisibility(.hidden, for: .navigationBar)
                //     .background(.clear)
            }
        }
    }
}

struct SymbolGridApp_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            AppBackground()
          //  Color(.red)
            NavigationStack {
                SymbolGrid()
            }
            //   .toolbarBackground(.hidden, for: .navigationBar)
            //     .toolbarBackgroundVisibility(.hidden, for: .navigationBar)
            //       .background(.clear)
            
        }
    }
}
