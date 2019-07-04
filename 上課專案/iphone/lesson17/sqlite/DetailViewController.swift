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
    @IBOutlet var cityLabel:UILabel!
    @IBOutlet var continentLabel:UILabel!
    @IBOutlet var countryLabel:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "\(city.country ?? "沒國家") - \(city.city ?? "沒城市")"
        cityImageView.image = UIImage(named: city.image)
        cityLabel.text = "城市:\(city.city ?? "")"
        continentLabel.text = "洲:\(city.continent ?? "")"
        countryLabel.text = "國家:\(city.country ?? "")"
    }

    

}
