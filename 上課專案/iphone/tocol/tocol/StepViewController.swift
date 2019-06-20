//
//  StepViewController.swift
//  tocol
//
//  Created by Robert on 2019/6/20.
//  Copyright © 2019 ios1. All rights reserved.
//

import UIKit
protocol StepViewControllerDelegate:NSObject{
    func stepperChange(stepperCounter count:Int);
}

class StepViewController: UIViewController {
    weak var stepperDelegate:StepViewControllerDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func userBack(_ sender:UIBarButtonItem){
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func userStepper(_ sender:UIStepper){
        print(sender.value);
        if let stepperDelegate = stepperDelegate{
            stepperDelegate.stepperChange(stepperCounter: Int(sender.value))
        }
    }
  
}
