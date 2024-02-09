//
//  ContentView.swift
//  ChefDelivery
//
//  Created by Juliano Lofy Junior on 09/02/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack{
                NavigationBar()
                    .padding(.horizontal, 15)

                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 20){
                        OrderTypeGridView()
                        CarouselTabView()
                        StoresContainerView()
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
