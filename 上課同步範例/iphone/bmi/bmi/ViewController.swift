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
                
                default:
                    
                    navigationItem.prompt =  "數值有誤"
                    return;
            }
           
            
            
            
        }else{
            
            navigationItem.prompt =  "輸入內容格式有誤"
            return;
        }
        
        var message = "";
        switch bmi{
            case 9.0..<18.5:
                message = "過輕";
            case 18.5..<24.0:
                message = "剛好"
            case 24.0..<27.0:
                message = "過重"
            case 27.0..<30.0:
               
                message = "輕度肥胖"
            case 30.0..<35.0:
                message = "中度肥胖"
            case let x where x > 35.0:
                message = "重度肥胖"
            default:break;
        }
        
        navigationItem.prompt = message;
        
        
    }

}

