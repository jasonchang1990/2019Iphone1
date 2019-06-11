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
    @IBOutlet var tableView:UITableView!;
    var city:City!;
    
    @IBOutlet var cityImageView:UIImageView!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cityImageView.image = UIImage(named: city.image)
        //0611
        title = city.city;
    }
    

   

}
