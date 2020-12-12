//
//  ViewController.swift
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

class ViewController: UIViewController {

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var age: UITextField!
    @IBOutlet weak var gender: UITextField!
    @IBOutlet weak var weight: UITextField!
    @IBOutlet weak var height: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let BMIResults = segue.destination as? BMIResults else {return}
        var result: Double!
        let doubleWeight = Double(weight.text!)
        let doubleHeight = Double(height.text!)!/100
        result = doubleWeight!/(doubleHeight*doubleHeight)
        BMIResults.score = result
        BMIResults.name = name.text!
    }
    
    @IBAction func clear(_ sender: Any) {
        name.text!=""
        age.text!=""
        gender.text!=""
        weight.text!=""
        height.text!=""
    }
}

