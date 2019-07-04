//
//  AddViewController.swift
//  sqlite
//
//  Created by Robert on 2019/7/4.
//  Copyright © 2019 ios1. All rights reserved.
//

import UIKit

class AddViewController: UITableViewController {
    @IBOutlet var cityField:UITextField!;
    @IBOutlet var countryField:UITextField!;
    
    override func viewDidLoad() {
        super.viewDidLoad()

        cityField.placeholder = "請輸入城市名稱"
        countryField.placeholder = "請輸入國家"
    }

   
    @IBAction func userDone(_ sender:UIBarButtonItem){
        if DataSource.defaults.insertCity(cityName: cityField.text!, countryName: countryField.text!){
            navigationController!.popToRootViewController(animated: true);
        }else{
            print("加入失敗");
        }
    }
}
