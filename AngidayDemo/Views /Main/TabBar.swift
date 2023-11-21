//
//  TabBar.swift
//  AngidayDemo
//
//  Created by Ngoc Nhu Y Banh on 2023-11-11.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem{
                    Label("Home",systemImage: "house.circle.fill")
                }
            
            CategoriesView()
                .tabItem{
                    Label("Categories",systemImage: "list.triangle")
                }
            
            NewRecipeView()
                .tabItem{
                    Label("New",systemImage: "square.and.pencil")
                }
            
            FavoritesView()
                .tabItem{
                    Label("Favourites",systemImage: "heart")
                }
            
            SettingsView()
                .tabItem{
                    Label("Settings",systemImage: "gear")
                }
        }
        .accentColor(Color(red: 187/255, green: 46/255, blue: 46/255,opacity: 1.0))
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
            .environmentObject(RecipesViewModel())
    }
}
