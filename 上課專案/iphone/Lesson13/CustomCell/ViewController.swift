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
    lazy var cityIsMarked = Array(repeating: false, count: citys.count)
    
    override func awakeFromNib() {
        super.awakeFromNib()
        let bundle = Bundle.main
        let pathURL = bundle.url(forResource: "citylist", withExtension: "plist")!
        citys = NSArray(contentsOf: pathURL) as? [[String:Any]]
        //cityIsMarked = Array(repeating: false, count: citys.count)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //1-------
        navigationItem.title = "每一個城市";
        navigationItem.rightBarButtonItem = editButtonItem;
        //end1--------
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
    //2
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath){
        //4
        if editingStyle == .delete {
            let deleteIndex = indexPath.row
            citys.remove(at: deleteIndex)
            tableView.deleteRows(at: [indexPath], with: .fade)
            /*
            
            tableView.reloadData();
 */
            //4 end
        }
        
    }
    //2end--------
}

extension ViewController{
    //MARK: - UITableViewDelegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        let city = citys[indexPath.row]
        //3
        navigationItem.title = city["City"] as? String
        //3end
        let cityName = city["City"] as! String
        let optionMenu = UIAlertController(
            title: "警告",
            message: "您選擇的城市是\(cityName)\n您想要做什麼",
            preferredStyle: .actionSheet)
        
        let alertAction_ok = UIAlertAction(
            title: "標示",
            style: .default){
                (alertAction:UIAlertAction) in
                var isMarket = self.cityIsMarked[indexPath.row]
                isMarket = !isMarket;
                self.cityIsMarked[indexPath.row] = isMarket;
                guard let cell = tableView.cellForRow(at: indexPath) else{
                    return;
                }
                cell.accessoryType = isMarket ? .checkmark : .none
        }
        
        let alertAction_contact = UIAlertAction(
            title: "聯絡旅行社",
            style: .default){
                (alertAction:UIAlertAction) -> Void in
                let busyController = UIAlertController(
                    title: "警告",
                    message: "忙線中",
                    preferredStyle: .alert)
                let okAction = UIAlertAction(
                    title: "OK",
                    style: .default,
                    handler: nil)
                busyController.addAction(okAction)
                self.present(busyController, animated: true, completion: nil)
        }
        
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

