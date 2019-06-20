//
//  ViewController.swift
//  tocol
//
//  Created by Robert on 2019/6/20.
//  Copyright © 2019 ios1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var counterLabel:UILabel!;
    var counter = 0 {
        didSet{
            if counter < 0 {
                counterLabel.text = "0"
            }else{
                counterLabel.text = String(counter)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counter = 10
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated);
        
        NotificationCenter.default.addObserver(forName: NSNotification.Name("stepperChange"), object: nil, queue: OperationQueue.main) {
            (notification:Notification) in
            print(notification.object!)
        }
    }
    
   


}


