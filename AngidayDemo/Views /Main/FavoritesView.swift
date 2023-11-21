//
//  FavoritesView.swift
//  AngidayDemo
//
//  Created by Ngoc Nhu Y Banh on 2023-11-11.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        NavigationView {
            Text("You haven't saved any recipe to your favorite yet.")
                .padding()
                .navigationTitle("Favourites")
        }
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
