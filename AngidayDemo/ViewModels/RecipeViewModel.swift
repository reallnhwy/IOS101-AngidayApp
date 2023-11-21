//
//  RecipeViewModel.swift
//  AngidayDemo
//
//  Created by Ngoc Nhu Y Banh on 2023-11-20.
//

import Foundation

class RecipesViewModel: ObservableObject {
    @Published private(set) var recipes: [Recipe] = []
    
    init() {
        recipes = Recipe.all 
    }
    func addRecipe(recipe: Recipe) {
        recipes.append(recipe)
    }
}
