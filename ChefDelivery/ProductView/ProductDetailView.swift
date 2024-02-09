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

            Spacer()

            VStack(spacing: 16){
                Text("Quantidade")
                    .bold()
                    .font(.title3)

                HStack {
                    Button(action: {
                        if productQuantity > 1 {
                            productQuantity -= 1
                        }
                    }, label: {
                        Image(systemName: "minus.circle.fill")
                            .font(.title)
                            .bold()
                    })

                    Text("\(productQuantity)")
                        .font(.title2)
                        .bold()

                    Button(action: {productQuantity += 1}, label: {
                        Image(systemName: "plus.circle.fill")
                            .font(.title)
                            .bold()
                    })
                }
            }

            Spacer()

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
}
