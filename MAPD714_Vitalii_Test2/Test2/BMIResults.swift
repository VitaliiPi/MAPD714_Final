//
//  BMIResults.swift
//  MAPD714_VitaliiPielievin_300885108_Test2
//
//  Created by vitalii on 2020-12-11.
//  Copyright © 2020 vitalii. All rights reserved.
//
//  Final Exam - BMI Calculator App
//  Version: 1.0
//
//  Student Name: Vitalii Pielievin
//  Student ID:   300885108
//  Date Started: 2020/12/11
//
//  It's a simple app that calculates BMI based on values entered and displays category of your BMI.
//

import UIKit

class BMIResults: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bmiScore: UILabel!
    @IBOutlet weak var category: UILabel!
    var name: String!
    var score : Double!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = name
        bmiScore.text = String(score)
        setCategory()
    }
    
    func setCategory(){
        if score < 16 {
            category.text! = "Severe Thinness"
        }
        else if score < 17 && score >= 16 {
            category.text! = "Moderate Thinness"
        }
        else if score < 18.5 && score >= 17 {
            category.text! = "Mild Thinness"
        }
        else if score < 25 && score >= 18.5 {
            category.text! = "Normal"
        }
        else if score < 30 && score >= 25 {
            category.text! = "Overweight"
        }
        else if score < 35 && score >= 30 {
            category.text! = "Obese Class I"
        }
        else if score < 40 && score >= 35 {
            category.text! = "Obese Class II"
        }
        else if  score >= 40 {
            category.text! = "Obese Class III"
        }
    }
}
