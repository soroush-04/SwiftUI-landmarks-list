//
//  LandmarkList.swift
//  Landmarks
//
//  Created by soroush kami on 2023-12-21.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationSplitView{
            List (landmarks) {landmark in
                NavigationLink{
                    LandmarkDetail(landmark: landmark)
                }label: {
                    LandmarkRow(landmark: landmark)
                }            }
            .navigationTitle("Landmark")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
}
