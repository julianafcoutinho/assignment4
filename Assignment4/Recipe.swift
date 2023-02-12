//
//  Recipe.swift
//  Assignment4
//
//  Created by Juliana on 2/9/23.
//

import Foundation

struct Recipe {
    init(_ name: String, _ bake: Bool, _ type: String, _ ing: String, _ file: String) {
        recipeName = name
        baked = bake
        recipeType = type
        ingredient = ing
        fileName = file
    }
    
    var recipeName: String
    var baked: Bool
    var recipeType: String
    var ingredient: String
    var fileName: String
    
}
