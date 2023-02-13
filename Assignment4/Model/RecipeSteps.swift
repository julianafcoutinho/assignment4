//
//  RecipeSteps.swift
//  Assignment4
//
//  Created by Juliana on 2/9/23.
//

import Foundation

struct RecipeSteps {
    init(_ txt: String, _ opt1: String, _ opt2: String, _ btn: String) {
        text = txt
        optionOne = opt1
        optionTwo = opt2
        buttonText = btn
        
    }
    
    var text: String
    var optionOne: String
    var optionTwo: String
    var buttonText: String
    
}
