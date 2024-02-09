//
//  CarouselItemView.swift
//  ChefDelivery
//
//  Created by Juliano Lofy Junior on 09/02/24.
//

import SwiftUI

struct CarouselItemView: View {
    let orderType: OrderType

    var body: some View {
        Image(orderType.image)
            .resizable()
            .scaledToFit()
    }
}
