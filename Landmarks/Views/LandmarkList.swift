//
//  LandmarkList.swift
//  Landmarks
//
//  Created by soroush kami on 2023-12-21.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List{
            LandmarkRow(landmark: landmarks[0])
            LandmarkRow(landmark: landmarks[1])
        }
    }
}

#Preview {
    LandmarkList()
}
