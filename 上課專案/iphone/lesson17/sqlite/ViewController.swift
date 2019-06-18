//
//  ViewController.swift
//  sqlite
//
//  Created by Robert on 2019/6/18.
//  Copyright © 2019 ios1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func awakeFromNib() {
        super.awakeFromNib();
        let dataSource1 = DataSource.defaults
        let dataSource2 = DataSource.defaults
        let dataSource3 = DataSource.defaults
        if dataSource1 === dataSource2{
            print("yes");
        }
        
        if dataSource2 === dataSource3{
            print("yes");
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

