//
//  ViewController.swift
//  lesson7
//
//  Created by Robert on 2019/4/30.
//  Copyright © 2019 Robert. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.blue;
        
        let greenView = UIView(frame: CGRect.init(x: 113, y: 111, width: 132, height: 149))
        greenView.backgroundColor = UIColor.green;
        view.addSubview(greenView)
        
        let redView = UIView(frame: CGRect.init(x: 0, y: 0, width: 50, height: 50))
        redView.backgroundColor = UIColor.red
        
        greenView.addSubview(redView)
    }


}

