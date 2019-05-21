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
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CELL", for: indexPath)
        cell.textLabel!.text = cityName
        return cell;
    }
}

extension ViewController{
    //MARK: - UITableViewDelegate
    
}

