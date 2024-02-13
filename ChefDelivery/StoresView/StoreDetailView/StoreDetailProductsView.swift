//
//  StoreDetailProductsView.swift
//  ChefDelivery
//
//  Created by Juliano Lofy Junior on 13/02/24.
//

import SwiftUI

struct StoreDetailProductsView: View {
    @State private var selectedProduct: ProductType?
    let products: [ProductType]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Produtor")
                .font(.title2)
                .bold()
                .padding()
            
            ForEach(products) { product in
                
                Button {
                    selectedProduct = product
                } label: {
                    StoreDetailProductItemView(product: product)
                }
                .sheet(item: $selectedProduct) { product in
                    ProductDetailView(product: product)
                }
            }
        }
    }
}
