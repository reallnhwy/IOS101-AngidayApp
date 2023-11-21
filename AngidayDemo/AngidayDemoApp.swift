//
//  AngidayDemoApp.swift
//  AngidayDemo
//
//  Created by Ngoc Nhu Y Banh on 2023-11-11.
//

import SwiftUI

@main
struct AngidayDemoApp: App {
    @StateObject var recipesViewModel = RecipesViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(recipesViewModel)
        }
    }
}
