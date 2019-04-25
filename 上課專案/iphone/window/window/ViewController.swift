//
//  ViewController.swift
//  window
//
//  Created by Robert on 2019/4/25.
//  Copyright © 2019 Robert. All rights reserved.
//

import UIKit
func add(firstValue a:Int,secondValue b:Int) -> Int{
    return a + b;
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print(add(firstValue: 3, secondValue: 4));
    }


}

