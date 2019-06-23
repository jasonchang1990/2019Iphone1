//
//  DetailViewController.swift
//  autolayout
//
//  Created by Robert on 2019/6/23.
//  Copyright © 2019 ios1. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func exitModles(_ sender:UIButton){
        dismiss(animated: true){
            print("DetailViewController被消失了")
        }
    }
}
