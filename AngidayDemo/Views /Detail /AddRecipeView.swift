//
//  AddRecipeView.swift
//  AngidayDemo
//
//  Created by Ngoc Nhu Y Banh on 2023-11-20.
//

import SwiftUI

struct AddRecipeView: View {
    @State private var name: String = ""
    @State private var selectedCategory: Category = Category.recipe
    @State private var description: String = ""
    @State private var ingredients: String = ""
    @State private var directions: String = ""
    @State private var image: String = ""
    @State private var navigateToRecipe = false
    
    @EnvironmentObject var recipesVM: RecipesViewModel
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Name")) {
                    TextField("Recipe Name",text: $name)
                }
                
                Section(header: Text("Category")) {
                    Picker("Category", selection: $selectedCategory) {
                        ForEach(Category.allCases) { category in
                            Text(category.rawValue)
                                .tag(category)
                        }
                    }
                    .pickerStyle(.menu)
                }
                Section(header: Text("Description")) {
                    TextEditor(text : $description)
                }
                Section(header: Text("Ingredients")) {
                    TextEditor(text: $ingredients)
                }
                Section(header: Text("Directions")) {
                    TextEditor(text: $directions)
                }
                Section(header: Text("Image Link")) {
                    TextEditor(text: $image)
                }
                
            }
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button{
                        dismiss()
                    } label: {
                        Label("Cancel", systemImage: "xmark")
                            .labelStyle(.iconOnly)
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    //.navigationDestination()
                    NavigationLink(isActive: $navigateToRecipe) {
                        RecipeView(recipe: Recipe.all.sorted{$0.datePublished > $1.datePublished}[0])
                        navigationBarBackButtonHidden(true)
                    } label: {
                        Button{
                            saveRecipe()
                            navigateToRecipe = true
                        } label: {
                            Label("Done", systemImage: "checkmark")
                                .labelStyle(.iconOnly)
                        }
                        
                    }
                    .disabled(name.isEmpty)
                    }
            })
            .navigationTitle("New Item")
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(.stack)
    }
}

struct AddRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        AddRecipeView()
        
            
    }
}

extension AddRecipeView {
    
    private func saveRecipe() {
        let now = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-mm-dd"
        let datePublished = dateFormatter.string(from: now)
        let recipe = Recipe(name: name, image: image, description: description, direction: directions, category: selectedCategory.rawValue, datePublished: datePublished, url: "", ingredients: ingredients)
        
        recipesVM.addRecipe(recipe: recipe)
    }
}
