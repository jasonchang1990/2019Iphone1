//
//  StepViewController.swift
//  tocol
//
//  Created by Robert on 2019/6/20.
//  Copyright © 2019 ios1. All rights reserved.
//

import UIKit


class StepViewController: UIViewController {
   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func userBack(_ sender:UIBarButtonItem){
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func userStepper(_ sender:UIStepper){
        NotificationCenter.default.post(name: NSNotification.Name("stepperChange"), object: sender.value)
    }
  
}
