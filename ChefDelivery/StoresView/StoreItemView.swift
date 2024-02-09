//
//  StoreItemView.swift
//  ChefDelivery
//
//  Created by Juliano Lofy Junior on 09/02/24.
//

import SwiftUI

struct StoreItemView: View {
    let order: OrderType
    var body: some View {
        HStack{
            Image(order.image)
                .resizable()
                .scaledToFit()
                .cornerRadius(25)
                .frame(width: 50, height: 50)
            VStack {
                Text(order.name)
                    .font(.subheadline)
            }
            Spacer()
        }
    }
}
