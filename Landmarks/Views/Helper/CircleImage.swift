//
//  CircleImage.swift
//  Landmarks
//
//  Created by soroush kami on 2023-12-18.
//

import SwiftUI

struct CircleImage: View {
    
    var image: Image
    var body: some View {
        image
        //            .resizable()
        //            .frame(width: 246.0, height: 256.0)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay {
                Circle().stroke(
                    .white,
                    lineWidth: 3
                )
            }
            .shadow(radius: 6)
    }
}

#Preview {
    CircleImage(image: Image("Turtlerock"))
}
