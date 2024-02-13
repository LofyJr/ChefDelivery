//
//  ProductDetailView.swift
//  ChefDelivery
//
//  Created by Juliano Lofy Junior on 09/02/24.
//

import SwiftUI

struct ProductDetailView: View {
    let product: ProductType
    @State var productQuantity = 1

    var body: some View {
        VStack{
            ProductDetailHeaderView(product: product)

            Spacer()

            ProductDetailQuantityView(productQuantity: $productQuantity)

            Spacer()
            
            ProductDetailButtonView()
        }
    }
}

struct ProductDetailButtonView: View {
    var body: some View {
        Button(action: {}, label: {
            HStack{
                Image(systemName: "cart")

                Text("Adicionar ao carrinho")
            }
            .padding(.horizontal, 32)
            .padding(.vertical, 16)
            .font(.title3)
            .bold()
            .background(Color("ColorRed"))
            .foregroundColor(.white)
            .cornerRadius(32)
            .shadow(color: Color("ColorRedDark").opacity(0.5), radius: 10, x: 6, y: 8)
        })
    }
}
