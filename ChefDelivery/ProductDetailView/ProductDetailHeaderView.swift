//
//  ProductDetailHeaderView.swift
//  ChefDelivery
//
//  Created by Juliano Lofy Junior on 13/02/24.
//

import SwiftUI

struct ProductDetailHeaderView: View {
    let product: ProductType
    var body: some View {
        VStack(alignment: .leading, spacing: 16){
            Image(product.image)
                .resizable()
                .scaledToFit()
                .shadow(radius: 20)
            
            Text(product.name)
                .font(.title)
                .bold()
                .padding(.horizontal)
                .padding(.top)
            
            Text(product.description)
                .padding(.horizontal)
            
            Text(product.formattedPrice)
                .font(.title3)
                .bold()
                .padding(.horizontal)
        }
    }
}
