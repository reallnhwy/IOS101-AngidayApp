//
//  RecipeView.swift
//  AngidayDemo
//
//  Created by Ngoc Nhu Y Banh on 2023-11-13.
//

import SwiftUI

struct RecipeView: View {
    var recipe: Recipe
    var body: some View {
        ScrollView {
            AsyncImage(url: URL(string: recipe.image)) { image in
                image
                    .resizable()
//                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    
                    
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100,height: 100, alignment: .center)
                    .foregroundColor(Color.white.opacity(0.7))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .frame(height:300)
            .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3),Color(.gray)]), startPoint: .top, endPoint: .bottom))
            
            VStack(spacing: 30) {
                
                Text(recipe.name)
                    .font(Font.custom("Georgia-Bold", size: 30))
                    .foregroundColor(Color(red: 187/255, green: 46/255, blue: 46/255,opacity: 1.0))
                    .multilineTextAlignment(.center)
                
                VStack(alignment: .leading, spacing: 30){
                    Text(recipe.description)
                    if !recipe.ingredients.isEmpty {
                        VStack(alignment: .leading, spacing: 20){
                            Text("Ingredients").font(.headline)
                            Text(recipe.ingredients)
                        }
                    }
                    
                    
                    
                    VStack(alignment: .leading, spacing: 20){
                        Text("Directions").font(.headline)
                        Text(recipe.direction)
                    }
                    
                } .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .ignoresSafeArea(.container, edges: .top)
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(recipe: Recipe.all[0])
    }
}
