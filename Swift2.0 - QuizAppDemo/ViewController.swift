//
//  ViewController.swift
//  Swift2.0 - QuizAppDemo
//
//  Created by User on 8/30/15.
//  Copyright © 2015 Elijah Buters. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    //Instance Variables
    var arrayOfQuestions = []
    var numberOfLives = 3
    var numberOfPoints = 0
    var currentQuestion = 0
    var questionCorrectAnswer = 1
    
    //UI Outlets
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var currentNumberOfPointsLabel: UILabel!
    @IBOutlet weak var numberOfLivesLeftLabel: UILabel!
    @IBOutlet weak var answerOneButton: UIButton!
    @IBOutlet weak var answerTwoButton: UIButton!
    @IBOutlet weak var answerThreeButton: UIButton!
    @IBOutlet weak var answerFourButton: UIButton!
    @IBOutlet weak var nextQuestionButton: UIButton!
    @IBOutlet weak var startOverButton: UIButton!


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //MARK: Add question
    func questionTemplate(question:String, answerOne:String, answerTwo:String, answerThree:String, answerFour:String, correctAnswer:Int) -> NSArray {
    
        //Set the question
        let quizQuestion = question
        
        //set the answers and the right answer
        let firstAnswer = answerOne
        let secondAnswer = answerTwo
        let thirdAnswer = answerThree
        let fourthAnswer = answerFour
        let rightAnswer = correctAnswer
        
        //Add all the questions and answers to an array
        let questionAnswerArray = [question, firstAnswer, secondAnswer, thirdAnswer, fourthAnswer, rightAnswer]
        return questionAnswerArray
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

