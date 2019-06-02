//
//  ViewController.swift
//  if
//
//  Created by Robert on 2019/6/2.
//  Copyright © 2019 ios1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var temperatureField:UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func userPress(){
        if let textValue = temperatureField.text, textValue != "", let temperatureValue = Int(textValue) {
            if temperatureValue <= 32 {
                temperatureField.text = "非常冷"
            }else{
                temperatureField.text = "不冷"
            }
        }else{
           temperatureField.text = "打錯了啦"
        }
            
     }
    
    

}

