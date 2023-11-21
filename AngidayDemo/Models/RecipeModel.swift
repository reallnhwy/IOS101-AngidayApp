//
//  RecipeModel.swift
//  AngidayDemo
//
//  Created by Ngoc Nhu Y Banh on 2023-11-12.
//

import Foundation

enum Category: String, CaseIterable, Identifiable {
    // This gonna create id for each enum value?
    var id: String {
        self.rawValue
    }
    case recipe = "Recipe"
    case dineout = "Dine-out"
}

struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let direction: String
    let category: Category.RawValue
    let datePublished: String
    let url : String
    let ingredients: String
}
// Create a new struct for restaurants ?

extension Recipe {
    static let all: [Recipe] = [
    Recipe(name: "Bun Bo Hue",
           image: "https://www.hungryhuy.com/wp-content/uploads/2-bun-bo-hue-300x450@2x.jpg",
           description: "It’s a rich and spicy soup with deep layers of flavor. This Central Vietnamese soup is paired with tender slices of beef and pork, then topped with lots of fresh herbs.",
           direction: "To make Bun Bo Hue, start by blanching and cleaning beef bones, then boil them with pork hocks and brisket. Add onion, ginger, lemongrass, Bun Bo Hue spice mix, fish sauce, salt, shrimp paste, and sugar. Simmer for 2-3 hours. Prepare toppings: slice beef, cook rice vermicelli, and slice pork blood pudding. Strain the broth for a clear base. Assemble by placing rice vermicelli, beef slices, and blood pudding in bowls, then pour hot broth over. Garnish with fresh herbs, bean sprouts, lime wedges, green onions, and sliced red chili. Adjust seasoning to taste and enjoy your flavorful Bun Bo Hue!",
           category: "Recipe",
           datePublished: "11-12-2023",
           url: "https://www.hungryhuy.com/bun-bo-hue-recipe/",
           ingredients: "2 lb beef shank\n2 lb  oxtail\n2 lb  pork hocks\n1 lb  Hue style pork sausage, which has garlic and whole peppercorns\n1 lb  block of pork blood"),
    Recipe(name: "Vietnamese Chicken Curry",
           image: "https://www.hungryhuy.com/wp-content/uploads/1-vietnamese-chicken-curry3-2-590x885@2x.jpg",
           description: "Vietnamese chicken curry (cà ri gà) is a hot bowl of comfort packed with FLAVOR. Although there is some wait time involved with the marinade to season the chicken, and frying the potato and carrot so they hold their shape, this curry recipe is hard to mess up.",
           direction: "To prepare this flavorful curry, begin by marinating large chicken pieces with salt, onion powder, and curry powder for 2-4 hours. Cut onions, potatoes, and carrots into chunks and lightly fry the potatoes and carrots until browned. Brown the marinated chicken in batches in a pot. Sweat onions in oil until soft, then add garlic. Return the chicken to the pot with lemongrass, bay leaves, and sugar. Add a mixture of 50% water and 50% chicken broth until ingredients are submerged. Bring to a boil, then simmer for 5 minutes. Adjust the broth with salt, sugar, and curry powder. Add potatoes and carrots, more water, and chicken broth. Simmer until chicken is cooked and vegetables are tender. Stir in coconut milk, bring to a boil, then turn off the heat. Serve with bread, a squeeze of lemon, and sambal for heat. Enjoy your delicious curry!",
           category: "Recipe",
           datePublished: "11-12-2023",
           url: "https://www.hungryhuy.com/vietnamese-chicken-curry-recipe/",
           ingredients: "2 lb chicken, any cut, chopped into large 2-3″ pieces\n1 1/2 lb potatoes\n1/2 lb carrots\n1 medium-sized onion\n4 garlic cloves, finely chopped\n2 stalks lemongrass, cut into 5″ pieces, then split lengthwise, smashed to expose more leaves\n3 bay leaves\n1/2 cup coconut milk\nOil for frying\n2 tsp sugar\n2-3 cups chicken broth\n2-3 cups water"),
    Recipe(name: "C|Prime",
           image: "https://assets-global.website-files.com/645e5eba1d05c23a10bbef54/6465141875f6f7f1c0de9aee_cprime-food01-p-500.jpg",
           description: "VANCOUVER’S AUTHENTIC ITALIAN RESTAURANT & STEAKHOUSE",
           direction: "1015 Burrard St, Vancouver, BC V6Z 1Y5",
           category: "Dine-out",
           datePublished: "11-13-2023",
           url: "https://www.cprime.ca/",
           ingredients: ""),
    Recipe(name: "B&D Authentic Viet Cuisine",
           image: "https://images.squarespace-cdn.com/content/v1/61b978a9c104db1054efc290/3957a1c1-e27c-4392-929a-08934ba86a7d/43.+Vegan+Curry.jpg?format=500w",
           description: "B&D is your local authentic Vietnamese restaurant. We offer a traditional taste from Saigon, with a modern twist.",
           direction: "7090 Kingsway, Burnaby, BC V5E 1E7",
           category: "Dine-out",
           datePublished: "11-13-2023",
           url: "https://www.bdvietcuisine.ca/",
           ingredients: ""),
    Recipe(name: "Tasty Indian Bistro",
           image: "https://tastybistro.ca/wp-content/uploads/2023/06/Tasty_Main_Momo_Desktop.jpg",
           description: "Tasty Indian Bistro is one of Canada’s premiere dining establishments, serving exquisite Indian Cuisine. Built on the inspiration and imagination of our founder, our core values to cooking and hospitality have been handed down through generations.",
           direction: "1261 Hamilton Street, Vancouver",
           category: "Dine-out",
           datePublished: "11-13-2023",
           url: "https://tastybistro.ca/",
           ingredients: "")]
}
