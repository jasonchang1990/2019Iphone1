//
//  ViewController.swift
//  MyLengcy
//
//  Created by Robert on 2019/4/23.
//  Copyright © 2019 Robert. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let label = UILabel(frame: CGRect(x: 20, y: 40, width: 250, height: 100))
        label.text = "您好嗎?\n你有事嗎?"
        
        view.addSubview(label)
        label.textColor = UIColor.white
        label.textAlignment = NSTextAlignment.center
        label.backgroundColor = UIColor.black
        label.font = UIFont.preferredFont(forTextStyle: UIFont.TextStyle.largeTitle)
        label.numberOfLines = 0
        
    }


}

