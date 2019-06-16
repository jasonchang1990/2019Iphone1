//
//  ViewController.swift
//  FirstApp
//
//  Created by Robert on 2019/6/16.
//  Copyright © 2019 ios1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //0616
        view.backgroundColor = UIColor.purple
        let myView = UIView(frame: CGRect(x: 100, y: 100, width: 200, height: 300));
        myView.backgroundColor = UIColor.white;
        myView.center = view.center;
        view.addSubview(myView);
        
    }


}

