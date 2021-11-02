//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Nikita Zharinov on 01/11/2021.
//

import UIKit

class ResultViewController: UIViewController {
    
    let questions = Question.getQuestions()
    var answerChosenQuestionsViewController: [Answer]!
    
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var resultTextLabel: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        showResultAnimal ()
        
    }
}

// MARK: Private Methods

extension ResultViewController {
    
    private func showResultAnimal () {
        
        var numCat = 0
        var numDog = 0
        var numTurtle = 0
        var numRabbit = 0
        
        answerChosenQuestionsViewController.forEach { item in
            switch item.type {
            case .cat :
                numCat += 1
            case .dog :
                numDog += 1
            case .turtle :
                numTurtle += 1
            case .rabbit :
                numRabbit += 1
            }
        }
        
        if (numCat > numDog && numCat > numTurtle && numCat > numRabbit) {
            resultLabel.text = "\(AnimalType.cat) - \(AnimalType.cat.rawValue)"
            resultTextLabel.text = AnimalType.cat.definition
        } else if (numDog > numCat && numDog > numTurtle && numDog > numRabbit) {
            resultLabel.text = "\(AnimalType.dog) - \(AnimalType.dog.rawValue)"
            resultTextLabel.text = AnimalType.dog.definition
        } else if (numTurtle > numCat && numTurtle > numDog && numTurtle > numRabbit) {
            resultLabel.text = "\(AnimalType.turtle) - \(AnimalType.turtle.rawValue)"
            resultTextLabel.text = AnimalType.turtle.definition
        } else if (numRabbit > numCat && numRabbit > numDog && numRabbit > numTurtle) {
            resultLabel.text = "\(AnimalType.rabbit) - \(AnimalType.rabbit.rawValue)"
            resultTextLabel.text = AnimalType.rabbit.definition
        } else {
            resultLabel.text = "\(AnimalType.cat) - \(AnimalType.cat.rawValue)"
            resultTextLabel.text = AnimalType.cat.definition
        }
        
    }
}
