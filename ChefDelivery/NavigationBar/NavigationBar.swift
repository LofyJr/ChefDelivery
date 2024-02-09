//
//  NavigationBar.swift
//  ChefDelivery
//
//  Created by Juliano Lofy Junior on 09/02/24.
//

import SwiftUI

struct NavigationBar: View {
    var body: some View {
        HStack {
            Spacer()
            Button("Rua. Vergueiro, 3185") {

            }
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundColor(.black)

            Spacer()
            Button(action: {}, label: {
                Image(systemName: "bell.badge")
                    .font(.title3)
                    .foregroundColor(.red)
            })
        }
    }
}

#Preview {
    NavigationBar()
}
