//
//  ViewController.swift
//  stackView
//
//  Created by Robert on 2019/5/7.
//  Copyright © 2019 Robert. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var press1:UIButton!;
    @IBOutlet var press2:UIButton!;
    @IBOutlet var press3:UIButton!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        press1.setTitle("HOME", for: .normal)
        press2.setTitle("AWESOME", for: .normal)
        press3.setTitle("FESTAVEL", for: .normal)
        //target - action
        press1.addTarget(self, action: #selector(userPress(_:)), for: .touchUpInside)
        press2.addTarget(self, action: #selector(userPress(_:)), for: .touchUpInside)
        press3.addTarget(self, action: #selector(userPress(_:)), for: .touchUpInside)
    }
    
    
    @objc func userPress(_ sender:UIButton){
        let buttonText = sender.title(for: .normal)!;
        print(buttonText);
    }
    
    @IBAction func anotherPress(_ sender:UIButton){
        let buttonText = sender.title(for: .normal)!;
        print(buttonText);
    }


}

