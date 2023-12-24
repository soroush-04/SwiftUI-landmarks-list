//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by soroush kami on 2023-12-18.
//

import SwiftUI

@main
struct LandmarksApp: App {
    
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
