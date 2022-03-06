//
//  ViewController.swift
//  Guess the Flag
//
//  Created by Luiz Hartmann on 24/02/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var firstButton: UIButton!
    @IBOutlet var secondButton: UIButton!
    @IBOutlet var thirdButton: UIButton!
    
    var countries = [String]()
    var score = 0
    var correctAnswer = 0
    var questionsAsked = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let playerScore = UIBarButtonItem(title: "Score", style: .plain, target: self, action: #selector(rightBarScore))
        self.navigationItem.rightBarButtonItem = playerScore
        
        countries += ["estonia", "france", "germany", "ireland", "italy", "monaco",
                      "nigeria", "poland", "russia", "spain", "uk", "us"]
        
        firstButton.layer.borderWidth = 1
        secondButton.layer.borderWidth = 1
        thirdButton.layer.borderWidth = 1
        
        firstButton.layer.borderColor = UIColor.lightGray.cgColor
        secondButton.layer.borderColor = UIColor.lightGray.cgColor
        thirdButton.layer.borderColor = UIColor.lightGray.cgColor
        
        askQuestion(action: nil)
    }
    
    @objc func askQuestion(action: UIAlertAction!) {
        
        questionsAsked += 1
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        
        title = countries[correctAnswer].uppercased()
        
        firstButton.setImage(UIImage(named: countries[0]), for: .normal)
        secondButton.setImage(UIImage(named: countries[1]), for: .normal)
        thirdButton.setImage(UIImage(named: countries[2]), for: .normal)
    }
    
    func finalScore(action: UIAlertAction!) {
        
        score = 0
        questionsAsked = 0

        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        
        title = countries[correctAnswer].uppercased()
        
        firstButton.setImage(UIImage(named: countries[0]), for: .normal)
        secondButton.setImage(UIImage(named: countries[1]), for: .normal)
        thirdButton.setImage(UIImage(named: countries[2]), for: .normal)
    }

    @objc private func rightBarScore() {
        
        let alertController = UIAlertController(title: "Score:", message: "\(score)", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alertController, animated: true)
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        
        var title: String
        
        if sender.tag == correctAnswer {
            
            title = "Correct"
            score += 1
            
        } else {
            
            title = "That's flag of \(countries[sender.tag].capitalized)"
            score -= 1
        }
        
        if questionsAsked < 10 {
            
            let alertController = UIAlertController(title: title, message: "Your score is: \(score)", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "Continue", style: .default, handler: askQuestion))
            present(alertController, animated: true)
            
        } else {
            
            let alertController = UIAlertController(title: title, message: "Your final score is: \(score)", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "Play again", style: .default, handler: finalScore))
            present(alertController, animated: true)
        }
    }
}

        
