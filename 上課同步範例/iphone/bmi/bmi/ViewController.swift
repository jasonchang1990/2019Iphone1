//
//  ViewController.swift
//  bmi
//
//  Created by Robert on 2019/6/2.
//  Copyright © 2019 ios1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var heightField:UITextField!
    @IBOutlet var weightField:UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func userCaculate(){
        let heightString = heightField.text!;
        let weightString = weightField.text!;
        var bmi = 0.0;
        if let heightValue = Double(heightString), let weightValue = Double(weightString){
            switch (heightValue, weightValue){
            case (100...250,40...150):
                bmi = weightValue / ((heightValue/100) * (heightValue/100));
                print("標準數值bmi = \(bmi)");
            default:
                print("數值有誤");
            }
            
            
            
            
        }else{
            print("輸入內容格式有誤");
        }
        
    }

}

