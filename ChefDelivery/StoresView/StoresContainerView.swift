//
//  StoresContainerView.swift
//  ChefDelivery
//
//  Created by Juliano Lofy Junior on 09/02/24.
//

import SwiftUI

struct StoresContainerView: View {
    let title = "Lojas"
    @State private var ratingFilter = 0

    var filteredStores: [StoreType] {
        return storesMock.filter { store in
            store.stars >= ratingFilter
        }
    }

    var body: some View {
        VStack(alignment: .leading){

            HStack{
                Text(title)
                    .font(.headline)

                Spacer()

                Menu("Filtrar"){
                    ForEach(1...5, id: \.self) { rating in
                        Button(action: {
                            ratingFilter = rating
                        }, label: {
                            if rating > 1 {
                                Text("\(rating) estrelas ou mais")
                            } else {
                                Text("\(rating) estrela ou mais")
                            }

                        })
                    }
                }
                .foregroundColor(.black)
            }

            VStack(alignment: .leading, spacing: 30){
                ForEach(filteredStores) { mock in
                    NavigationLink {
                        StoreDetailView(store: mock)
                    } label: {
                        StoreItemView(store: mock)
                    }
                }
            }
            .foregroundColor(.black)
        }
        .padding(20)
    }
}

#Preview {
    StoresContainerView()
}
