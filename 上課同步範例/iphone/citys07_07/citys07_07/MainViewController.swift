//
//  MainViewController.swift
//  citys07_07
//
//  Created by Robert on 2019/7/7.
//  Copyright © 2019 ios1. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    var imageScrollView = UIScrollView();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(imageScrollView);
        print(view.frame)
        imageScrollView.backgroundColor = UIColor.brown;
        imageScrollView.translatesAutoresizingMaskIntoConstraints = false;
        NSLayoutConstraint.activate([
            imageScrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            imageScrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imageScrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            imageScrollView.heightAnchor.constraint(equalToConstant: view.frame.height / 3.0)
            ])
    }
    

   

}
