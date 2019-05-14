//
//  ViewController.swift
//  table
//
//  Created by Robert on 2019/5/9.
//  Copyright © 2019 Robert. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource {
    @IBOutlet var tableView:UITableView!;
    var cities:[[String:Any]]!;
    
    override func awakeFromNib() {
        super.awakeFromNib();
        let plistPath = Bundle.main.path(forResource: "citylist", ofType: "plist")!;
        cities = NSArray(contentsOfFile: plistPath) as? [[String:Any]]
        
        /*
        for city in cities{
            print("城市是:\(city["City"] as! String)");
            print("國家:\(city["Country"] as! String)");
            print("州:\(city["Continent"] as! String)");
            print("緯度:\(city["lat"] as! Double)");
            print("經度:\(city["long"] as! Double)");
            print("=======================================");
        }
 */
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self;
    }
    
    // MARK: - UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return cities.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        print("tableView和我要第幾個row:\(indexPath.row)")
        let city = cities[indexPath.row];
        let cell = tableView.dequeueReusableCell(withIdentifier: "CELL", for: indexPath);
        cell.textLabel!.text = city["City"] as? String
        cell.detailTextLabel!.text = city["Country"] as? String
        return cell
    }


}

