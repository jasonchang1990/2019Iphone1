//
//  ViewController.swift
//  extension
//
//  Created by Robert on 2019/6/18.
//  Copyright © 2019 ios1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.color = UIColor.green
    }


}

extension UINavigationController{
    var color:UIColor{
        get{
            return navigationBar.tintColor
        }
        set{
            navigationBar.tintColor = newValue
        }
    }
}

