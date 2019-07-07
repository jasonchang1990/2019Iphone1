//
//  ViewController.swift
//  citys07_07
//
//  Created by Robert on 2019/7/7.
//  Copyright © 2019 ios1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("city的數量\(DataSource.citys.count)");
        print("city的城市名:\(DataSource.names)");
    }


}

