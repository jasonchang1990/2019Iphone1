//
//  ViewController.swift
//  sqlite
//
//  Created by Robert on 2019/6/18.
//  Copyright © 2019 ios1. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    var allCitys:[City]!;
    
    override func awakeFromNib() {
        super.awakeFromNib()
        let dataSource = DataSource.defaults;
        allCitys = dataSource.allCitys;
        for city in allCitys{
            print(city.city);
        }
       
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

