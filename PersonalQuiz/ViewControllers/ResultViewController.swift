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
    

    // 2. Определить наиболее часто встречающийся тип животного
    // 3. Отобразить результаты в соотвствии с этим животным
    
}

// MARK: Private Methods

extension ResultViewController {
    
    private func showResultAnimal () {
        resultLabel.text = "\(AnimalType.cat) - \(AnimalType.cat.rawValue)"
        resultTextLabel.text = AnimalType.cat.definition
    }
}
