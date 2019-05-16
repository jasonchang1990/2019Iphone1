//
//  ViewController.swift
//  CustomCell
//
//  Created by Robert on 2019/5/16.
//  Copyright © 2019 ML. All rights reserved.
//

import UIKit
func add(firstNum f:Int, secondNum s:Int) -> Int{
    return f + s;
}

class ViewController: UITableViewController {
    var score = 60;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("myMoneny:\(myMoneny)")
        print("myAppDelegateMoneny:\(AppDelegate.myAppDelegateMoneny)");
        print("a+b=\(add(firstNum: 3, secondNum: 5))");
        score = -1
        print("score=\(score)");
    }


}

