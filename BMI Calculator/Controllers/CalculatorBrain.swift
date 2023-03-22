//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Guilherme Moreira Soares on 16/01/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit
struct CalculatorBrain {
    var bmi: BMI?
    func getBMIValue() -> String {
 
        let bmiTO1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTO1DecimalPlace
    }
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.gray
    }
    mutating func calculateBMI (height: Float, weight: Float){
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "underweight", color: UIColor.purple)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "normal weight", color: UIColor.green)
        } else {
            bmi = BMI(value: bmiValue, advice: "overweight", color: UIColor.red)
        }
    }
}
