//
//  HomeView.swift
//  AngidayDemo
//
//  Created by Ngoc Nhu Y Banh on 2023-11-11.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var recipesVM : RecipesViewModel
    
    var body: some View {
        VStack{
            Text("Angiday?")
                .font(Font.custom("Georgia", size: 25))
                .fontWeight(.heavy)
                .foregroundColor(Color(red: 187/255, green: 46/255, blue: 46/255,opacity: 1.0))
//                .padding(.top)
            
            NavigationView {
                ScrollView{
                    RecipeList(recipes: recipesVM.recipes)
                }
                .navigationTitle("My Collections")
                .navigationBarTitleDisplayMode(.inline)
            }
            .navigationViewStyle(.stack)
            
        }
        
        
    }
        
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
//            .environmentObject(RecipesViewModel())
//            
    }
}
