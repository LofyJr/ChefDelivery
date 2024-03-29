//
//  StoreType.swift
//  ChefDelivery
//
//  Created by Juliano Lofy Junior on 09/02/24.
//

import Foundation

struct StoreType: Identifiable, Decodable {
    let id: Int
    let name: String
    let logoImage: String
    let headerImage: String
    let location: String
    let stars: Int
    let products: [ProductType]

    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case logoImage = "logo_image"
        case headerImage = "header_image"
        case location = "location"
        case stars = "stars"
        case products = "products"
    }
}
