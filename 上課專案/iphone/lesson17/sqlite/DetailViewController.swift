//
//  DetailViewController.swift
//  sqlite
//
//  Created by Robert on 2019/7/4.
//  Copyright © 2019 ios1. All rights reserved.
//

import UIKit

class DetailViewController: UITableViewController {
    var city:City!;
    @IBOutlet var cityImageView:UIImageView!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "\(city.country ?? "沒國家") - \(city.city ?? "沒城市")";
        cityImageView.image = UIImage(named: city.image)
    }

    

}
