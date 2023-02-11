//
//  ViewController.swift
//  Assignment4
//
//  Created by Juliana on 2/9/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var btn1: UIButton!
    
    @IBOutlet weak var btn2: UIButton!
    
    @IBOutlet weak var decision: UIButton!
    
    var recipeLogic = RecipeLogic()
    var bake = true;
    var sweet = ""
    var ingredient = ""
    var btn1input = ""
    var btn2input = ""
    var choice = ":)"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "Are you hungry? We will decide what you should make today."
        decision.setTitle("Start!", for: .normal)
        btn1.setTitle(":)", for: .normal)
        btn2.setTitle(":)", for: .normal)
        image.isHidden = true
    }

    @IBAction func decisionBtn(_ sender: UIButton!) {
        if (decision.currentTitle == "Find out!") {
            choice = ":)"
            btn1.setTitle(":)", for: .normal)
            btn2.setTitle(":)", for: .normal)
            decision.setTitle("Restart", for: .normal)
            label.text = "You will be making " + recipeLogic.getRecipe(bake, sweet, ingredient)
            image.isHidden = false
            
        }
        else {
            image.isHidden = true
            btn1.setTitle((recipeLogic.getDecision(label.text!).optionOne), for: .normal)
            btn2.setTitle((recipeLogic.getDecision(label.text!).optionTwo), for: .normal)
            decision.setTitle((recipeLogic.getDecision(label.text!).buttonText), for: .normal)
            label.text = (recipeLogic.getDecision(label.text!).text)
        }
    }
    
    @IBAction func option1Btn(_ sender: UIButton!) {
        if (btn1.currentTitle == ":)" || decision.currentTitle == "Find out!") {
            
        }
        else {
            btn1input = btn1.currentTitle!
            switch btn1input {
            case "Bake!":
                bake = true;
                choice = "bake"
            case "Sweet":
                sweet = "sweet"
                choice = "sweet"
            case "Chocolate":
                ingredient = "chocolate"
                choice = "chocolate"
            case "Vegetarian":
                ingredient = "vegetarian"
                choice = "vegetarian"
            default:
                return }
            label.text = (recipeLogic.getStep(choice)).text
            decision.setTitle((recipeLogic.getStep(choice)).buttonText, for: .normal)
            btn1.setTitle((recipeLogic.getStep(choice)).optionOne, for: .normal)
            btn2.setTitle((recipeLogic.getStep(choice)).optionTwo, for: .normal)
        }
    }
    
    
    
    @IBAction func option2Btn(_ sender: UIButton!) {
        if (btn2.currentTitle == ":)" || decision.currentTitle == "Find out!") {
        }
        else { btn2input = btn2.currentTitle!
            switch btn2input {
            case "No Oven":
                bake = false;
                choice = "no oven"
            case "Savory":
                sweet = "savory"
                choice = "savory"
            case "Fruits":
                ingredient = "fruit"
                choice = "fruit"
            case "Meat":
                ingredient = "meat"
                choice = "meat"
            default:
                return }
            label.text = (recipeLogic.getStep(choice)).text
            decision.setTitle((recipeLogic.getStep(choice)).buttonText, for: .normal)
            btn1.setTitle((recipeLogic.getStep(choice)).optionOne, for: .normal)
            btn2.setTitle((recipeLogic.getStep(choice)).optionTwo, for: .normal)
        }}
    
    
    
    @IBOutlet weak var image: UIImageView!
}

