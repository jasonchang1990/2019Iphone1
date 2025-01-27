//
//  ViewController.swift
//  simpleTableView
//
//  Created by t1 on 2019/1/20.
//  Copyright © 2019年 gjun. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var citys:[[String:Any]]!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let bundle = Bundle.main;
        let pathURL = bundle.url(forResource: "citylist", withExtension: "plist")!;
        citys = NSArray(contentsOf: pathURL) as? [[String:Any]];
        
        
    }
    //MARK: - UITableViewDataSource
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return citys.count;
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let rowIndex = indexPath.row;
        let cityDic = citys[rowIndex];
        let cityName = cityDic["City"] as? String;
        let imageName = cityDic["Image"] as? String;
        let countryName = cityDic["Country"] as? String;
        let continentName = cityDic["Continent"] as? String;
        let cell = tableView.dequeueReusableCell(withIdentifier: "CELL", for: indexPath) as! CityCell;
        cell.cityLabel.text = cityName;
        cell.countryLabel.text = countryName;
        cell.continentLabel.text = continentName;
        cell.cityImageView.image = UIImage(named: imageName!);
        return cell;
    }

    //MARK: - UITableViewDelegate
    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath?{
        return nil;
    }
}

