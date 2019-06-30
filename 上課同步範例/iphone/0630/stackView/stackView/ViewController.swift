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
    var buttonNames = [String]();
    
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
        
        if let path = Bundle.main.path(forResource: "buttonNames", ofType: "plist"){
            if let array = NSArray(contentsOfFile: path){
                buttonNames = array as! [String]
            }
            
        }
        
        if let btn1 = (view.viewWithTag(101) as? UIButton){
           btn1.setTitle(buttonNames[0], for: .normal)
        }
        
        if let btn2 = (view.viewWithTag(102) as? UIButton){
            btn2.setTitle(buttonNames[1], for: .normal)
        }
        
        if let btn3 = (view.viewWithTag(103) as? UIButton){
            btn3.setTitle(buttonNames[2], for: .normal)
        }
 
      
        
    }
    
    @IBAction func leftBtnClick(_ sender:UIButton){
        print("leftBtnClick");
    }
    
    @IBAction func rightBtnClick(_ sender:UIButton){
        print("rightBtnClick");
    }


}

