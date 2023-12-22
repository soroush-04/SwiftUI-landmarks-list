//
//  LandmarkList.swift
//  Landmarks
//
//  Created by soroush kami on 2023-12-21.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List (landmarks) {landmark in
            LandmarkRow (landmark: landmark)
        }
    }
}

#Preview {
    LandmarkList()
}
