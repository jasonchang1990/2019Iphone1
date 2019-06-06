//
//  CiteDetailViewController.swift
//  CustomCell
//
//  Created by Robert on 2019/5/30.
//  Copyright © 2019 ML. All rights reserved.
//

import UIKit

class CiteDetailViewController: UIViewController {
    //0606
    var city:City!;
    @IBOutlet var cityImageView:UIImageView!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //0606
        cityImageView.image = UIImage(named: city.image)
    }
    

   

}
