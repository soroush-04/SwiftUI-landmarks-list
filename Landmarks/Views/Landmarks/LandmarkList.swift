//
//  LandmarkList.swift
//  Landmarks
//
//  Created by soroush kami on 2023-12-21.
//

import SwiftUI

struct LandmarkList: View {
    
    @Environment(ModelData.self) var modelData
    @State private var showFavs = false
    
    var fillteredList: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavs || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView{
            
            List {
                
                Toggle(isOn:$showFavs){
                    Text("Favorite Landmarks")
                }
                
                ForEach(fillteredList) {landmark in
                    NavigationLink{
                        LandmarkDetail(landmark: landmark)
                    }label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            
            .animation(.default, value: fillteredList)
            .navigationTitle("Landmark")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
        .environment(ModelData())
}
