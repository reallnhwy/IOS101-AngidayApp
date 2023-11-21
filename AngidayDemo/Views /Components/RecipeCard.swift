//
//  RecipeCard.swift
//  AngidayDemo
//
//  Created by Ngoc Nhu Y Banh on 2023-11-12.
//

import SwiftUI

struct RecipeCard: View {
    var recipe: Recipe
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: recipe.image)) { image in
                image
                    .resizable()
                    .scaledToFit()
                    .aspectRatio(contentMode: .fill)
                    
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40,height: 40, alignment: .center)
                    .foregroundColor(Color.white.opacity(0.7))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
        }
        .frame(width: 160, height: 217, alignment: .top)
        .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3),Color(.systemPink)]), startPoint: .top, endPoint: .bottom))
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(color: Color.black.opacity(0.4), radius: 15, x: 0 , y: 10)
        .overlay(alignment: .bottom) {
            Text(recipe.name)
                .font(.headline)
                .foregroundColor(Color.white)
                .shadow(color: Color.black, radius: 3, x:0, y:0)
                .frame(maxWidth:136)
                .padding()
        }

    }
}

struct RecipeCard_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCard(recipe: Recipe.all[0])
    }
}
