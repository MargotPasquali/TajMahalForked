//
//  NumberFormatter.swift
//  TajMahal
//
//  Created by Margot Pasquali on 30/05/2024.
//

import Foundation

extension NumberFormatter {
    static let currencyEUR: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.currencyCode = "EUR"
        return formatter
    }()
}
