//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by 김규철 on 2023/03/22.
//

import SwiftUI

@main //The @main attribute identifies the app’s entry point.
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
