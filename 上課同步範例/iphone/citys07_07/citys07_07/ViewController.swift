//
//  ViewController.swift
//  citys07_07
//
//  Created by Robert on 2019/7/7.
//  Copyright © 2019 ios1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var cityList:UITextView!;
    var namesString = "";
    override func viewDidLoad() {
        super.viewDidLoad()
        for cityName in DataSource.names{
            namesString += "\(cityName)\n\n"
        }
        cityList.text = namesString;
       
    }


}

