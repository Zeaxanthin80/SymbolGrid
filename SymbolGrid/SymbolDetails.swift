//
//  SymbolDetails.swift
//  SymbolGrid
//
//  Created by Jose Marquez on 7/11/26.
//

import SwiftUI


struct SymbolDetail: View {
    var symbol: Symbol


    var body: some View {
        ZStack {
            AppBackground()
                .ignoresSafeArea()
            VStack {
                Text(symbol.name)
                    .font(.system(.largeTitle, design: .rounded))
                
                Image(systemName: symbol.name)
                    .resizable()
                    .scaledToFit()
                    .symbolRenderingMode(.hierarchical)
                    .foregroundColor(.accentColor)
            }
            .padding(16)
        }
    }
    

}


struct Details_Previews: PreviewProvider {
    static var previews: some View {
        SymbolDetail(symbol: Symbol(name: "magnifyingglass"))
    }
}
