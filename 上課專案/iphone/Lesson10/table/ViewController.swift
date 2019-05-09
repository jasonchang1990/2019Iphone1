//
//  ViewController.swift
//  table
//
//  Created by Robert on 2019/5/9.
//  Copyright © 2019 Robert. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var button:UIButton!;
    
    override func awakeFromNib() {
        super.awakeFromNib();
        print(button ?? "這實體還沒有建立完成")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(button.description)
    }


}

