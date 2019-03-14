//
//  QuestionViewController.swift
//  HP Sorting Hat
//
//  Created by Kelsey Yim on 3/4/19.
//  Copyright © 2019 Kelsey Yim. All rights reserved.
//

import Foundation
import UIKit

   //array of answers
var houseName: String!
class QuestionViewController: UIViewController {
    
    struct Answers{
        var house: String
        var answer_choice: String
        var question: String
        
    }
    
    // Connect the functions to change answers and questions programmatically
    @IBOutlet var question_label: UILabel!
    @IBOutlet var answer_1:UIButton!
    @IBOutlet var answer_2:UIButton!
    @IBOutlet var answer_3:UIButton!
    @IBOutlet var answer_4:UIButton!
    
    @IBOutlet var learnMore: UIButton!
    
    // Initialize all counters for attributes and keeping track of questions
    var gryffindorCounter: Int  = 0
    var slytherinCounter: Int  = 0
    var ravenclawCounter: Int  = 0
    var hufflepuffCounter: Int  = 0
    var question_counter: Int = 0
    
    var answer : [Answers]!
    var officialHouse: String! = "gryffindor"
    
    
    // To determine what attribute the user has more of, this calculates what House they're from
    var largest: Int = 0
    
    // Create results page background image
    @IBOutlet var bgImage: UIImageView!
    
    
    // Create all questions
    var attributes = ["Gryffindor", "Hufflepuff", "Slytherin", "Ravenclaw"]
    var questions = ["Which do you find most difficult to deal with?", "What is your idea of a good Friday?", "What do you look forward to learning at Hogwarts?" ,"If you could have any power, which would you choose?", "Given the choice,would you rather invent a potion that would guarantee you.." ]
    var ans = ["Boredom", "Loneliness", "Being ignored", "Being wrong"]
    var ans2 = ["Going out and partying!", "Hanging out with a couple of close friends", "Being left unbothered to do what I want", "Studying"]
    var ans3 = ["Flying on a broomstick", "Magical creatures", "Potions", "Every area of magic"]
    var ans4 = ["The power of invisibility", "The power to speak to animals", "The power to change the past", "The power to read minds"]
    var ans5 = ["Glory", "Love", "Power", "Wisdom"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.answer = Array(repeating: Answers(house: "", answer_choice: "", question: ""), count: 4)
        
        if question_counter == 0 {
            question_label?.text = questions[0]
            question_label?.sizeToFit()
            for i in 0..<4{
                answer?[i].house = attributes[i]
                answer?[i].answer_choice = ans[i]
                answer?[i].question = questions[i]
            }
            question_counter += 1
            answer.shuffle()
            answer_1?.setTitle(answer[0].answer_choice, for: .normal)
            answer_2?.setTitle(answer[1].answer_choice, for: .normal)
            answer_3?.setTitle(answer[2].answer_choice, for: .normal)
            answer_4?.setTitle(answer[3].answer_choice, for: .normal)
        }
        
        let image: UIImage = UIImage(named: officialHouse)!
        self.bgImage = UIImageView(image:image)
        self.bgImage.image = image
        
    }
    
    @IBAction func changeTextOne(_ sender: UIButton){
        question_counter += 1
        print(answer_1.currentTitle!, answer[0].house)
        if answer[0].house == "Gryffindor"{
            gryffindorCounter += 1
        }
        if answer[0].house == "Slytherin"{
            slytherinCounter += 1
        }
        if answer[0].house == "Hufflepuff"{
            hufflepuffCounter += 1
        }
        if answer[0].house == "Ravenclaw"{
            ravenclawCounter += 1
        }
        if question_counter == 1 {
            answer.shuffle()
            answer_1.setTitle(answer[0].answer_choice, for: .normal)
            answer_2.setTitle(answer[1].answer_choice, for: .normal)
            answer_3.setTitle(answer[2].answer_choice, for: .normal)
            answer_4.setTitle(answer[3].answer_choice, for: .normal)
        }
        if question_counter == 2 {
            question_label.text = questions[1]
            question_label?.sizeToFit()
            for i in 0..<4{
                answer?[i].house = attributes[i]
                answer?[i].answer_choice = ans2[i]
            }
            answer.shuffle()
            answer_1.setTitle(answer[0].answer_choice, for: .normal)
            answer_2.setTitle(answer[1].answer_choice, for: .normal)
            answer_3.setTitle(answer[2].answer_choice, for: .normal)
            answer_4.setTitle(answer[3].answer_choice, for: .normal)
        }
        
        if question_counter == 3 {
            question_label.text = questions[2]
            question_label?.sizeToFit()
            for i in 0..<4{
                answer?[i].house = attributes[i]
                answer?[i].answer_choice = ans3[i]
            }
            answer.shuffle()
            answer_1.setTitle(answer[0].answer_choice, for: .normal)
            answer_2.setTitle(answer[1].answer_choice, for: .normal)
            answer_3.setTitle(answer[2].answer_choice, for: .normal)
            answer_4.setTitle(answer[3].answer_choice, for: .normal)

        }
        if question_counter == 4 {
            question_label.text = questions[3]
            question_label?.sizeToFit()
            for i in 0..<4{
                answer?[i].house = attributes[i]
                answer?[i].answer_choice = ans4[i]
            }
            answer.shuffle()
            answer_1.setTitle(answer[0].answer_choice, for: .normal)
            answer_2.setTitle(answer[1].answer_choice, for: .normal)
            answer_3.setTitle(answer[2].answer_choice, for: .normal)
            answer_4.setTitle(answer[3].answer_choice, for: .normal)
            
        }
        if question_counter == 5 {
            question_label.text = questions[4]
            question_label?.sizeToFit()
            for i in 0..<4{
                answer?[i].house = attributes[i]
                answer?[i].answer_choice = ans5[i]
            }
            answer.shuffle()
            answer_1.setTitle(answer[0].answer_choice, for: .normal)
            answer_2.setTitle(answer[1].answer_choice, for: .normal)
            answer_3.setTitle(answer[2].answer_choice, for: .normal)
            answer_4.setTitle(answer[3].answer_choice, for: .normal)
        }
        if question_counter > 5 {
            calculateHouse()
            
        }

    }
    @IBAction func changeTextTwo(_ sender: UIButton){
        question_counter += 1
        if answer[1].house == "Gryffindor"{
            gryffindorCounter += 1
        }
        if answer[1].house == "Slytherin"{
            slytherinCounter += 1
        }
        if answer[1].house == "Hufflepuff"{
            hufflepuffCounter += 1
        }
        if answer[1].house == "Ravenclaw"{
            ravenclawCounter += 1
        }
        print(answer_2.currentTitle!, answer[1].house)
        if question_counter == 1 {
            answer.shuffle()
            answer_1.setTitle(answer[0].answer_choice, for: .normal)
            answer_2.setTitle(answer[1].answer_choice, for: .normal)
            answer_3.setTitle(answer[2].answer_choice, for: .normal)
            answer_4.setTitle(answer[3].answer_choice, for: .normal)
        }
        if question_counter == 2 {
            question_label.text = questions[1]
            for i in 0..<4{
                answer?[i].house = attributes[i]
                answer?[i].answer_choice = ans2[i]
            }
            answer.shuffle()
            answer_1.setTitle(answer[0].answer_choice, for: .normal)
            answer_2.setTitle(answer[1].answer_choice, for: .normal)
            answer_3.setTitle(answer[2].answer_choice, for: .normal)
            answer_4.setTitle(answer[3].answer_choice, for: .normal)
        }
        
        if question_counter == 3 {
            question_label.text = questions[2]
            for i in 0..<4{
                answer?[i].house = attributes[i]
                answer?[i].answer_choice = ans3[i]
            }
            answer.shuffle()
            answer_1.setTitle(answer[0].answer_choice, for: .normal)
            answer_2.setTitle(answer[1].answer_choice, for: .normal)
            answer_3.setTitle(answer[2].answer_choice, for: .normal)
            answer_4.setTitle(answer[3].answer_choice, for: .normal)
            
        }
        if question_counter == 4 {
            question_label.text = questions[3]
            for i in 0..<4{
                answer?[i].house = attributes[i]
                answer?[i].answer_choice = ans4[i]
            }
            answer.shuffle()
            answer_1.setTitle(answer[0].answer_choice, for: .normal)
            answer_2.setTitle(answer[1].answer_choice, for: .normal)
            answer_3.setTitle(answer[2].answer_choice, for: .normal)
            answer_4.setTitle(answer[3].answer_choice, for: .normal)
            
        }
        if question_counter == 5 {
            question_label.text = questions[4]
            for i in 0..<4{
                answer?[i].house = attributes[i]
                answer?[i].answer_choice = ans5[i]
            }
            answer.shuffle()
            answer_1.setTitle(answer[0].answer_choice, for: .normal)
            answer_2.setTitle(answer[1].answer_choice, for: .normal)
            answer_3.setTitle(answer[2].answer_choice, for: .normal)
            answer_4.setTitle(answer[3].answer_choice, for: .normal)
        }
        if question_counter > 5 {
            calculateHouse()
        }
    }
    @IBAction func changeTextThree(_ sender: UIButton){
        question_counter += 1
        if answer[2].house == "Gryffindor"{
            gryffindorCounter += 1
        }
        if answer[2].house == "Slytherin"{
            slytherinCounter += 1
        }
        if answer[2].house == "Hufflepuff"{
            hufflepuffCounter += 1
        }
        if answer[2].house == "Ravenclaw"{
            ravenclawCounter += 1
        }
        print(answer_3.currentTitle!, answer[2].house)
        if question_counter == 1 {
            answer.shuffle()
            answer_1.setTitle(answer[0].answer_choice, for: .normal)
            answer_2.setTitle(answer[1].answer_choice, for: .normal)
            answer_3.setTitle(answer[2].answer_choice, for: .normal)
            answer_4.setTitle(answer[3].answer_choice, for: .normal)
        }
        if question_counter == 2 {
            question_label.text = questions[1]
            for i in 0..<4{
                answer?[i].house = attributes[i]
                answer?[i].answer_choice = ans2[i]
            }
            answer.shuffle()
            answer_1.setTitle(answer[0].answer_choice, for: .normal)
            answer_2.setTitle(answer[1].answer_choice, for: .normal)
            answer_3.setTitle(answer[2].answer_choice, for: .normal)
            answer_4.setTitle(answer[3].answer_choice, for: .normal)
        }
        
        if question_counter == 3 {
            question_label.text = questions[2]
            for i in 0..<4{
                answer?[i].house = attributes[i]
                answer?[i].answer_choice = ans3[i]
            }
            answer.shuffle()
            answer_1.setTitle(answer[0].answer_choice, for: .normal)
            answer_2.setTitle(answer[1].answer_choice, for: .normal)
            answer_3.setTitle(answer[2].answer_choice, for: .normal)
            answer_4.setTitle(answer[3].answer_choice, for: .normal)
            
        }
        if question_counter == 4 {
            question_label.text = questions[3]
            for i in 0..<4{
                answer?[i].house = attributes[i]
                answer?[i].answer_choice = ans4[i]
            }
            answer.shuffle()
            answer_1.setTitle(answer[0].answer_choice, for: .normal)
            answer_2.setTitle(answer[1].answer_choice, for: .normal)
            answer_3.setTitle(answer[2].answer_choice, for: .normal)
            answer_4.setTitle(answer[3].answer_choice, for: .normal)
            
        }
        if question_counter == 5 {
            question_label.text = questions[4]
            for i in 0..<4{
                answer?[i].house = attributes[i]
                answer?[i].answer_choice = ans5[i]
            }
            answer.shuffle()
            answer_1.setTitle(answer[0].answer_choice, for: .normal)
            answer_2.setTitle(answer[1].answer_choice, for: .normal)
            answer_3.setTitle(answer[2].answer_choice, for: .normal)
            answer_4.setTitle(answer[3].answer_choice, for: .normal)
            
        }
        if question_counter > 5 {
            calculateHouse()
        }
    }
    @IBAction func changeTextFour(_ sender: UIButton){
        question_counter += 1
        print(answer_4.currentTitle!, answer[3].house)
        if answer[3].house == "Gryffindor"{
            gryffindorCounter += 1
        }
        if answer[3].house == "Slytherin"{
            slytherinCounter += 1
        }
        if answer[3].house == "Hufflepuff"{
            hufflepuffCounter += 1
        }
        if answer[3].house == "Ravenclaw"{
            ravenclawCounter += 1
        }
        if question_counter == 1 {
            answer.shuffle()
            answer_1.setTitle(answer[0].answer_choice, for: .normal)
            answer_2.setTitle(answer[1].answer_choice, for: .normal)
            answer_3.setTitle(answer[2].answer_choice, for: .normal)
            answer_4.setTitle(answer[3].answer_choice, for: .normal)
        }
        if question_counter == 2 {
            question_label.text = questions[1]
            for i in 0..<4{
                answer?[i].house = attributes[i]
                answer?[i].answer_choice = ans2[i]
            }
            answer.shuffle()
            answer_1.setTitle(answer[0].answer_choice, for: .normal)
            answer_2.setTitle(answer[1].answer_choice, for: .normal)
            answer_3.setTitle(answer[2].answer_choice, for: .normal)
            answer_4.setTitle(answer[3].answer_choice, for: .normal)
        }
        
        if question_counter == 3 {
            question_label.text = questions[2]
            for i in 0..<4{
                answer?[i].house = attributes[i]
                answer?[i].answer_choice = ans3[i]
            }
            answer.shuffle()
            answer_1.setTitle(answer[0].answer_choice, for: .normal)
            answer_2.setTitle(answer[1].answer_choice, for: .normal)
            answer_3.setTitle(answer[2].answer_choice, for: .normal)
            answer_4.setTitle(answer[3].answer_choice, for: .normal)
            
        }
        if question_counter == 4 {
            question_label.text = questions[3]
            for i in 0..<4{
                answer?[i].house = attributes[i]
                answer?[i].answer_choice = ans4[i]
            }
            answer.shuffle()
            answer_1.setTitle(answer[0].answer_choice, for: .normal)
            answer_2.setTitle(answer[1].answer_choice, for: .normal)
            answer_3.setTitle(answer[2].answer_choice, for: .normal)
            answer_4.setTitle(answer[3].answer_choice, for: .normal)
            
        }
        if question_counter == 5 {
            question_label.text = questions[4]
            for i in 0..<4{
                answer?[i].house = attributes[i]
                answer?[i].answer_choice = ans5[i]
            }
            answer.shuffle()
            answer_1.setTitle(answer[0].answer_choice, for: .normal)
            answer_2.setTitle(answer[1].answer_choice, for: .normal)
            answer_3.setTitle(answer[2].answer_choice, for: .normal)
            answer_4.setTitle(answer[3].answer_choice, for: .normal)
            
        }
        if question_counter > 5 {
            calculateHouse()
        }
    
    }
    
    func calculateHouse() {
        largest = max(max(gryffindorCounter, slytherinCounter), max(hufflepuffCounter, ravenclawCounter))

        if largest == gryffindorCounter{
            print("Gryffindor!")
            officialHouse = "gryffindor"
            houseName = "gryffindor"
            performSegue(withIdentifier: "gryffindorResult", sender: self)
        }
        if largest == slytherinCounter{
            print("Slytherin!")
            officialHouse = "slytherin"
            houseName = "slytherin"
            performSegue(withIdentifier: "slytherinResult", sender: self)
        }
        if largest == hufflepuffCounter{
            print("Hufflepuff!")
            officialHouse = "hufflepuff"
            houseName = "hufflepuff"
            performSegue(withIdentifier: "hufflepuffResult", sender: self)
        }
        if largest == ravenclawCounter{
            print("Ravenclaw!")
            officialHouse = "ravenclaw"
            houseName = "ravenclaw"
            performSegue(withIdentifier: "ravenclawResult", sender: self)
        }
        
    }
    
    @IBAction func displayWebPage(_ sender: UIButton){
        performSegue(withIdentifier: "displayWeb", sender: self)
    }


}
