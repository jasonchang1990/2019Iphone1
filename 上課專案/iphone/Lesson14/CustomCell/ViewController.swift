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
    var myCount:Int!;
    /*
    init(myCount:Int){
        self.myCount = myCount;
        super.init(nibName: nil, bundle: nil)
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        //fatalError("init(coder:) has not been implemented")
        self.init(myCount:5)
    }
 */
    
    override func awakeFromNib() {
        super.awakeFromNib()
        myCount = 5;
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
   
}

extension ViewController{
  
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        /*
         //只有使用到class
        let cityDetailViewController = CiteDetailViewController(nibName: nil, bundle: nil);
        cityDetailViewController.view.backgroundColor = UIColor.brown;
        navigationController!.pushViewController(cityDetailViewController, animated: true);
 */
        /*
        //class + storyboard + coding
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vcityDetailViewController = storyboard.instantiateViewController(withIdentifier: "CityDetail")
        navigationController!.pushViewController(vcityDetailViewController, animated: true)
 */
        //using storyboard
    }
    
    override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]?{
        let deleteAction = UITableViewRowAction(
            style: .default,
            title: "刪除"
        ){
            (action:UITableViewRowAction,indexPath:IndexPath) -> Void in
            let deleteIndex = indexPath.row
            self.citys.remove(at: deleteIndex)
            tableView.deleteRows(at: [indexPath], with: .fade)
            self.cityIsMarked.remove(at: deleteIndex)
        }
        
        let shareAction = UITableViewRowAction(
            style: .default,
            title: "分享") { (action:UITableViewRowAction, indexPath:IndexPath) in
                let defaultText = "請直接打電話給" + (self.citys[indexPath.row]["City"] as! String);
                let activityController = UIActivityViewController(activityItems: [defaultText], applicationActivities: nil)
                self.present(activityController, animated: true, completion: nil)
        }
        let r = 48.0;
        
        let b = 99.0
        shareAction.backgroundColor = UIColor(red: CGFloat(r)/255.0, green: 173.0/255.0, blue: CGFloat(b) / 255.0, alpha: 1.0)
        
        return [deleteAction,shareAction]
    }
}

