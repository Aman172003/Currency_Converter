//
//  CurrencyIcon.swift
//  Currency_Converter
//
//  Created by Aman on 13/05/24.
//

import SwiftUI

struct CurrencyIcon: View {
    let image: ImageResource
    let text: String
    var body: some View {
        ZStack(alignment: .bottom){
            Image(image)
                .resizable()
                .scaledToFit()
            Text(text)
                .padding(3)
                .font(.caption)
                .frame(maxWidth: .infinity)
                .background(.brown.opacity(0.75))
        }
        .padding(3)
        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
        .background(.brown)
        .clipShape(.rect(cornerRadius: 25))
    }
}

#Preview {
    CurrencyIcon(image: .copperpenny, text: "Copper Penny")
}
