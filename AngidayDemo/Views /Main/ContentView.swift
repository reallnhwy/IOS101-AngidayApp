//
//  ContentView.swift
//  AngidayDemo
//
//  Created by Ngoc Nhu Y Banh on 2023-11-11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabBar()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(RecipesViewModel())
    }
}
