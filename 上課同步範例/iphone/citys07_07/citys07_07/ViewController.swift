//
//  ViewController.swift
//  citys07_07
//
//  Created by Robert on 2019/7/7.
//  Copyright © 2019 ios1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var dataSource = DataSource();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("city的數量\(dataSource.citys.count)");
    }


}

