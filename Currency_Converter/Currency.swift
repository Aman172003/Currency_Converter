//
//  Currency.swift
//  Currency_Converter
//
//  Created by Aman on 14/05/24.
//
import SwiftUI

enum Currency: Double, CaseIterable, Identifiable{
    case copperPenny = 6400
    case silverPenny = 64
    case silverPiece = 16
    case goldPenny = 4
    case goldPiece = 1
    
    var id: Currency { self }
    
//    image is the computed property
    var image: ImageResource {
        switch self{
//            the case property referring tonthe case of enum
        case .copperPenny:
//            below is the image
                .copperpenny
        case .silverPenny:
                .silverpenny
        case .silverPiece:
                .silverpiece
        case .goldPenny:
                .goldpenny
        case .goldPiece:
                .goldpiece
        }
    }
    
    var name: String{
        switch self {
        case .copperPenny:
            "Copper Penny"
        case .silverPenny:
            "Silver Penny"
        case .silverPiece:
            "Silver Piece"
        case .goldPenny:
            "Gold Penny"
        case .goldPiece:
            "Gold Piece"
        }
    }
    
    func convert(_ amountString: String, to currency: Currency) -> String {
//        guard else is like try catch in webD
        guard let doubleAmount = Double(amountString) else {
            return ""
        }
        let convertedAmt = (doubleAmount / self.rawValue) * currency.rawValue
        return String(format: "%.2f", convertedAmt)
    }
}
