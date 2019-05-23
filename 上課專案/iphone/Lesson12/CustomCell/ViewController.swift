//
//  ViewController.swift
//  CustomCell
//
//  Created by Robert on 2019/5/16.
//  Copyright © 2019 ML. All rights reserved.
//

import UIKit


class ViewController: UITableViewController {
    var citys:[[String:Any]]!
    override func awakeFromNib() {
        super.awakeFromNib()
        let bundle = Bundle.main
        let pathURL = bundle.url(forResource: "citylist", withExtension: "plist")!
        citys = NSArray(contentsOf: pathURL) as? [[String:Any]]
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /*
        tableView.delegate = self;
        tableView.dataSource = self;
 */
    }
}

extension ViewController{
    //MARK: - UITableViewDataSource
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return citys.count;
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cityDic = citys[indexPath.row]
        let cityName = cityDic["City"] as! String;
        let country = cityDic["Country"] as! String;
        let continent = cityDic["Continent"] as! String;
        let imageName = cityDic["Image"] as! String;
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CELL", for: indexPath) as! CustomCell
        cell.cityNameLabel.text = cityName
        cell.countryNameLabel.text = country
        cell.continentNameLabel.text = continent
        cell.cityImageView.image = UIImage(named: imageName)
        return cell;
    }
}

extension ViewController{
    //MARK: - UITableViewDelegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        let city = citys[indexPath.row]
        let cityName = city["City"] as! String
        let optionMenu = UIAlertController(
            title: "警告",
            message: "您選擇的城市是\(cityName)\n您想要做什麼",
            preferredStyle: .actionSheet)
        
        let alertAction_ok = UIAlertAction(
            title: "沒事",
            style: .default){
                (alertAction:UIAlertAction) in
                print("使用都按了OK")
        }
        
        let alertAction_contact = UIAlertAction(
            title: "聯絡旅行社",
            style: .default,
            handler: nil)
        
        let alertAction_cancel = UIAlertAction(
            title: "取消",
            style: .cancel, handler:
            nil)
        
        optionMenu.addAction(alertAction_ok)
        optionMenu.addAction(alertAction_contact)
        optionMenu.addAction(alertAction_cancel)
        present(optionMenu, animated: true){
            print("展示完成");
        }
        
        
        
    }
}

