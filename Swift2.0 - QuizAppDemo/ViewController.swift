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
        
        
        //MARK: Questions
        let questionOne = questionTemplate("What year did WWII start?", answerOne: "1939", answerTwo: "1940", answerThree: "1941", answerFour: "1942", correctAnswer: 1)
        let questionTwo = questionTemplate("What day was D-Day?", answerOne: "June 6, 1944", answerTwo: "June 16, 1944", answerThree: "June 26, 1944", answerFour: "June 16, 1943", correctAnswer: 1)
        let questionThree = questionTemplate("What country was first invaded by Germany?", answerOne: "France", answerTwo: "Belgium", answerThree: "Poland", answerFour: "Russia", correctAnswer: 3)
        let questionFour = questionTemplate("Which article of the Weimar Constitution granted Hitler his dictator powers? ", answerOne: "Article 26", answerTwo: "Article 86", answerThree: "Article 3", answerFour: "Article 48", correctAnswer: 4)
        let questionFive = questionTemplate("Who was the leader of the Soviet Union during World War II?", answerOne: "Lenin", answerTwo: "Trotsky", answerThree: "Stalin", answerFour: "Khruschev", correctAnswer: 3)
        
        //Add the questions to the array
        arrayOfQuestions = [questionOne, questionTwo, questionThree, questionFour, questionFive]

    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
    
    // Function for setting the game to its initial state
    func initialState() {
        //Setting the initial values
        numberOfLives = 3
        numberOfPoints = 0
        currentQuestion = 0
        questionCorrectAnswer = 1


}

}