//
//  CarouselTabView.swift
//  ChefDelivery
//
//  Created by Juliano Lofy Junior on 09/02/24.
//

import SwiftUI

struct CarouselTabView: View {

    @State private var currentIndex = 1


    let ordersMock: [OrderType] = [
        OrderType(id: 1, name: "banner burguer", image: "barbecue-banner"),
        OrderType(id: 2, name: "banner prato feito", image: "brazilian-meal-banner"),
        OrderType(id: 3, name: "banner pokes", image: "pokes-banner")
    ]
    var body: some View {
        TabView(selection: $currentIndex){
            ForEach(ordersMock) { mock in
                CarouselItemView(orderType: mock)
                    .tag(mock.id)
            }
        }
        .frame(height: 180)
        .tabViewStyle(.page(indexDisplayMode: .always))
        .onAppear {
            Timer.scheduledTimer(withTimeInterval: 3, repeats: true) { _ in
                withAnimation(.easeIn(duration: 1)) {
                    if currentIndex > ordersMock.count {
                        currentIndex = 1
                    } else {
                        currentIndex += 1
                    }
                }
            }
        }
    }
}

#Preview {
    CarouselTabView()
}
