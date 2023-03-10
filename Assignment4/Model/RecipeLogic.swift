//
//  RecipeLogic.swift
//  Assignment4
//
//  Created by Juliana on 2/9/23.
//

import Foundation

struct RecipeLogic {
    
    let recipe = [
        Recipe("s'mores brownies", true, "sweet", "chocolate", "brownies"),
        Recipe("citrus upside down cake", true, "sweet", "fruit", "citrus"),
        Recipe("pao de queijo", true, "savory", "vegetarian", "paodequeijo"),
        Recipe("maple bacon biscuits", true, "savory", "meat", "biscuits"),
        Recipe("chocolate mousse", false, "sweet", "chocolate", "mousse"),
        Recipe("trifle", false, "sweet", "fruit", "trifle"),
        Recipe("arancini", false, "savory", "vegetarian", "arancini"),
        Recipe("carne seca risotto", false, "savory", "meat", "risotto"),
    ]
    
    let recipeStep = [
        RecipeSteps("Are you hungry? We will decide what you should make today.", ":)", ":)", "Start!"),
        RecipeSteps("First of all: do you want to turn on the oven, or would you prefer to stay cool?", "Bake!", "No Oven", "Restart"),
        RecipeSteps("Okay, so would you prefer something sweet, or are you feeling more savory?", "Sweet", "Savory", "Restart"),
        RecipeSteps("One last question. Are you feeling more like chocolate, or maybe fruits?", "Chocolate", "Fruits", "Restart"),
        RecipeSteps("One last question. Would you like something vegetarian, or would you prefer meat?", "Vegetarian", "Meat", "Restart"),
        RecipeSteps("One last question. Are you feeling more like chocolate, or maybe fruits?", "Chocolate", "Fruits", "Find out!"),
        RecipeSteps("One last question. Would you like something vegetarian, or would you prefer meat?", "Vegetarian", "Meat", "Find out!"),
        RecipeSteps("This is what you will be making -", ":)", ":)", "Restart")
        ]
    
    func getStep(_ choice: String) -> RecipeSteps{
        switch choice {
        case ":)":
            return recipeStep[1]
        case "bake", "no oven" :
            return recipeStep[2]
        case "sweet":
            return recipeStep[3]
        case "savory":
            return recipeStep[4]
        case "chocolate", "fruit":
            return recipeStep[5]
        case "vegetarian", "meat":
            return recipeStep[6]
        default:
            return recipeStep[0]
        }
    }
    
    func getDecision(_ click: String) -> RecipeSteps{
        switch click {
        case "Are you hungry? We will decide what you should make today.":
            return recipeStep[1]
        case "One last question. Are you feeling more like chocolate, or maybe fruits?", "One last question. Would you like something vegetarian, or would you prefer meat?":
            return recipeStep[7]
        default:
            return recipeStep[0]
        }
    }
        
        func getRecipe(_ bake: Bool, _ type: String, _ ing: String) -> Recipe? {
            for recipes in recipe {
                if recipes.baked == bake {
                    if recipes.recipeType == type {
                        if recipes.ingredient == ing {
                            return recipes
                        }
                    }
                }
            }
            return nil
        }
    }
    
    
    //for recipe in recipe
    //if objects match, return that recipe

