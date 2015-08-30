//
//  ViewController.swift
//  Swift2.0 - QuizAppDemo
//
//  Created by User on 8/30/15.
//  Copyright © 2015 Elijah Buters. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
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

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

