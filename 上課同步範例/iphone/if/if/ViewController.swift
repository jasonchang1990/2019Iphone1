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
        print("使用者填了:\(temperatureField.text!)");
    }

}

