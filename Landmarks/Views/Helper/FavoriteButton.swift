//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by soroush kami on 2023-12-24.
//

import SwiftUI

struct FavoriteButton: View {
    
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label(
                "Favorites Button",
                systemImage: isSet ? "star.fill" : "star"
            )
            .labelStyle(.iconOnly)
            .foregroundColor(.yellow)
        }
    }
}

#Preview {
    FavoriteButton(isSet: .constant(true))
}
