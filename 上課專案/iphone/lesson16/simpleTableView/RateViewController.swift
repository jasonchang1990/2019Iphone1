//
//  RateViewController.swift
//  Animation
//
//  Created by Robert on 2019/6/13.
//  Copyright © 2019 gjun. All rights reserved.
//

import UIKit

class RateViewController: UIViewController {
    @IBOutlet var backgroundImageView:UIImageView!
    @IBOutlet var container:UIView!
    @IBOutlet var cityImageView:UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let blurEffect = UIBlurEffect(style: .dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        backgroundImageView.addSubview(blurEffectView)
    }

    

}
