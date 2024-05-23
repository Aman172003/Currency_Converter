//
//  SelectCurrency.swift
//  Currency_Converter
//
//  Created by Aman on 13/05/24.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    @Binding var topCurrency: Currency
    @Binding var bottomCurrency: Currency
    var body: some View {
        ZStack{
//            bg image
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            VStack{
//                Text
                Text("Select the currency you are starting with:")
                    .fontWeight(.bold)
                
//                Currency icons
                IconGrid(currency: $topCurrency)
                
                
                
//                text
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                    
//                Currency icons
                IconGrid(currency: $bottomCurrency)
//                Done button
                Button("Done") {
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .font(.largeTitle)
                .padding()
                .foregroundColor(.white)
            }
            .padding()
            .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    SelectCurrency(topCurrency: .constant(.copperPenny), bottomCurrency: .constant(.silverPiece))
}
