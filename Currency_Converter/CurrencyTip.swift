//
//  CurrencyTip.swift
//  Currency_Converter
//
//  Created by Aman on 24/05/24.
//

import Foundation
import TipKit

struct CurrencyTip: Tip {
    var title = Text("Change Currency")
    
    var message: Text? = Text("You can tap the left or right currency to bring up the select currency screen.")
    
    
}
