//
//  AnotherViewController.swift
//  stackView
//
//  Created by Robert on 2019/5/7.
//  Copyright © 2019 Robert. All rights reserved.
//

import UIKit

class AnotherViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func leftBtnClick(_ sender:UIButton){
        print("leftButtonClick");
    }
    
    @IBAction func rightBtnClick(_ sender:UIButton){
        print("rightButtonClick");
    }

}
