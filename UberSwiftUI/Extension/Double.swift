//
//  Double.swift
//  UberSwiftUI
//
//  Created by Aditya Bhardwaj on 03/07/25.
//

import Foundation

extension Double {
    private var currencyFormatter: NumberFormatter {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .currency
        numberFormatter.minimumFractionDigits = 2
        numberFormatter.maximumFractionDigits = 2
        return numberFormatter
    }
    
    func toCurrency() -> String {
        return currencyFormatter.string(for: self) ?? ""
    }
}
