//
//  Double+.swift
//  ChefDelivery
//
//  Created by Juliano Lofy Junior on 09/02/24.
//

import Foundation

extension Double {

    func formatPrice() -> String {
        let formattedString = String(format: "%.2f", self)
        return formattedString.replacingOccurrences(of: ".", with: ",")
    }
}
