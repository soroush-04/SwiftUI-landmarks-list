//
//  ContentView.swift
//  Landmarks
//
//  Created by soroush kami on 2023-12-18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            
            MapView()
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack (alignment: .leading) {
                Text("High Park")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                HStack {
                    Text("Toronto")
                    Spacer()
                    Text("ON")
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()


                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")

            }
            .padding(30)
            
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
