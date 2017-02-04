//
//  ViewController.swift
//  GGcalculator
//
//  Created by Gokulsree Yenugadhati on 1/9/17.
//  Copyright © 2017 Gokul Yenugadhati. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var currGradeField: UITextField!

    @IBOutlet weak var desiredGradeField: UITextField!
    
    @IBOutlet weak var finalWeightField: UITextField!
    
    
    @IBOutlet weak var percentNeededLabel: UILabel!
   
    @IBOutlet weak var errorLabel: UILabel!
    @IBAction func onCalculate(_ sender: Any) {
        print("Calculating!")
        guard let currGradeField = currGradeField.text,!currGradeField.isEmpty else{
            errorLabel.isHidden = false
            errorLabel.text = "Error Enter Current Grade"
            return
        }
        guard let desiredGradeField = desiredGradeField.text,!desiredGradeField.isEmpty else{
            errorLabel.isHidden = false
            errorLabel.text = "Error Enter Desired Grade"
            return
        }
        guard let finalWeightField = finalWeightField.text,!finalWeightField.isEmpty else{
            errorLabel.isHidden = false
            errorLabel.text = "Error Enter Weight of Final"
            return
        }
        errorLabel.isHidden = true
        let currGradeVal = Double(currGradeField)!
        let desiredGradeVal = Double(desiredGradeField)!
        let finalWeightVal = Double(finalWeightField)!
        //((100 - finalWeight) / 100) * currentGrade
        // diffGrade = gradeWeWant - gradeWeHave
        // diffGrade / finalWeight * 100
        let unWeightGrade = ((100 - finalWeightVal)/100) * currGradeVal
        print(unWeightGrade)
        let diffGrade = desiredGradeVal - unWeightGrade
        let finalGrade = diffGrade/finalWeightVal * 100
        percentNeededLabel.text = "\(finalGrade)%"
        
    }
}

