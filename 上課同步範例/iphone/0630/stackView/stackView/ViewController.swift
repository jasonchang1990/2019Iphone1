//
//  ViewController.swift
//  stackView
//
//  Created by Robert on 2019/6/30.
//  Copyright © 2019 ios1. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    @IBOutlet var myTitle:UILabel!;
    @IBOutlet var myImageView:UIImageView!;
    let buttonNames = ["Python", "Swift", "Kotlin"];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTitle.text = "StackView Show";
        myImageView.layer.cornerRadius = 20;
        myImageView.layer.borderWidth = 2;
        myImageView.layer.borderColor = UIColor.darkGray.cgColor;
        myImageView.layer.shadowColor = UIColor.red.cgColor;
        myImageView.layer.shadowOffset = CGSize(width: 5.0, height: 5.0)
        myImageView.layer.shadowOpacity = 0.7
        myImageView.layer.shadowRadius = 5
        
      
        
    }
    
    @IBAction func leftBtnClick(_ sender:UIButton){
        print("leftBtnClick");
    }
    
    @IBAction func rightBtnClick(_ sender:UIButton){
        print("rightBtnClick");
    }


}

