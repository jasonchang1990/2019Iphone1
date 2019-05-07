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
    }


}

