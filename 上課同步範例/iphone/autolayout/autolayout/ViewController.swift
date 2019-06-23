//
//  ViewController.swift
//  autolayout
//
//  Created by Robert on 2019/6/23.
//  Copyright © 2019 ios1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var leftConstraints:NSLayoutConstraint!;
    @IBOutlet var rightConstraints:NSLayoutConstraint!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func userClick(_ sender:UIButton){
        print("左邊限制:\(leftConstraints.constant)");
        print("右邊限制:\(rightConstraints.constant)");
       leftConstraints.constant = (leftConstraints.constant == 40) ? 80 : 40
       rightConstraints.constant = (rightConstraints.constant == 40) ? 80 : 40
    }
    
    @IBAction func nextClick(_ sender:UIButton){
        let detailViewController = DetailViewController(nibName: "DetailViewController", bundle: nil);
        present(detailViewController, animated: true) {
            print("DetailViewController已經出現");
        }
    }
}

