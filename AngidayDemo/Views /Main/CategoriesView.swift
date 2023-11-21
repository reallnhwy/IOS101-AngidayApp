//
//  CategoriesView.swift
//  AngidayDemo
//
//  Created by Ngoc Nhu Y Banh on 2023-11-11.
//

import SwiftUI

struct CategoriesView: View {
    @EnvironmentObject var recipesVM: RecipesViewModel
    var body: some View {
        NavigationView {
            List{
                ForEach(Category.allCases){category in
                    NavigationLink {
                
                        ScrollView {
                            Text(category.rawValue + "s")
                                .padding(.bottom)
                                .font(Font.custom("Georgia-Bold", size: 40))
                                .foregroundColor(Color(red: 187/255, green: 46/255, blue: 46/255,opacity: 1.0))
                            //Like explicit return in java script
                            //fitler the recipe with the desired category
                            RecipeList(recipes: recipesVM.recipes.filter{ $0.category == category.rawValue})
                        }
                        
                    } label: {
                        Text(category.rawValue + "s").font(Font.custom("Georgia", size: 15)).foregroundColor(Color(red: 187/255, green: 46/255, blue: 46/255,opacity: 1.0))
                    }
                    
                }
            } .navigationTitle("Categories").font(Font.custom("Georgia", size: 15)).foregroundColor(Color(red: 187/255, green: 46/255, blue: 46/255,opacity: 1.0))
        }
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
