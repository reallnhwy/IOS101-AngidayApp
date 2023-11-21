//
//  RecipeList.swift
//  AngidayDemo
//
//  Created by Ngoc Nhu Y Banh on 2023-11-12.
//

import SwiftUI

struct RecipeList: View {
    var recipes: [Recipe]
    var body: some View {
        VStack {
            HStack{
                Text("\(recipes.count) \(recipes.count > 1 ? "items" : "item")")
                    .font(Font.custom("Georgia", size: 13))
                    .foregroundColor(Color(red: 187/255, green: 46/255, blue: 46/255,opacity: 1.0))
                    .fontWeight(.medium)
                    .opacity(0.7)
                
                Spacer()
            }
            
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 160),spacing: 15)], spacing: 20) {
                ForEach(recipes) { recipe in
                    NavigationLink(destination: RecipeView(recipe: recipe)){
                        RecipeCard(recipe: recipe)
                    }
                }
            }
            .padding(.top)
            
        }
        .padding(.horizontal)
    }
}

struct RecipeList_Previews: PreviewProvider {
    static var previews: some View {
            ScrollView{
                RecipeList(recipes: Recipe.all)
            }
           
        
        
    }
}
