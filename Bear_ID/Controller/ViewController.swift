//
//  ViewController.swift
//  Bear_ID
//
//  Created by Patrick Holmes on 5/12/19.
//  Copyright © 2019 Patrick Holmes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let photoArray = ["Black_1", "Black_2", "Black_3", "Black_4", "Black_5", "Black_6", "Black_7", "Black_8", "Black_9", "Black_10", "Black_11", "Black_12", "Black_13", "Black_14", "Black_15", "Black_16", "Black_17", "Black_18", "Black_19", "Black_20", "Grizzly_1", "Grizzly_2", "Grizzly_3", "Grizzly_4", "Grizzly_5", "Grizzly_6", "Grizzly_7", "Grizzly_8", "Grizzly_9", "Grizzly_10", "Grizzly_11", "Grizzly_12", "Grizzly_13", "Grizzly_14", "Grizzly_15", "Grizzly_16", "Grizzly_17", "Grizzly_18", "Grizzly_19", "Grizzly_20", "Grizzly_21", "Grizzly_22", "Grizzly_23", "Grizzly_24", "Grizzly_25", "Grizzly_26"]
    
//    let allQuestions = QuestionBank()
    var pickedAnswer : String = ""
    var correctAnswer : String = ""
    var questionNumber : Int = 0
    var score : Int = 0
    var randomBearIndex : Int = 0
    
    @IBOutlet weak var bearImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateBearImage()
        
    }

    @IBAction func answerPressed(_ sender: AnyObject) {
        
        if sender.tag == 1 {
            pickedAnswer = "Brown Bear"
        } else if sender.tag == 2 {
            pickedAnswer = "Black Bear"
        }
        
        checkAnswer()
    }
    
    func updateBearImage(){
        
        randomBearIndex = Int.random(in: 0 ... 45)
        
        bearImage.image = UIImage(named: photoArray[randomBearIndex])
    }
    
    func checkAnswer() {
        
        if randomBearIndex <= 19 {
            correctAnswer = "Black Bear"
        } else {
            correctAnswer = "Brown Bear"
        }
        
        if pickedAnswer == correctAnswer {
            ProgressHUD.showSuccess("Correct")
            score += 1
            print("correct")
        } else {
            ProgressHUD.showError("Wrong!")
            print("wrong")
        }
        updateBearImage()
        
    }
    
}

