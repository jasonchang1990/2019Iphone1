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
//0611
extension CiteDetailViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 6;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "CELL", for: indexPath);
        switch indexPath.row {
        case 0:
            cell.textLabel?.text = city.continent;
        case 1:
            cell.textLabel?.text = city.country;
        case 2:
            cell.textLabel?.text = city.local;
        case 3:
            cell.textLabel?.text = String(city.latitude);
        case 4:
            cell.textLabel?.text = String(city.longitude);
        case 5:
            cell.textLabel?.text = city.url;
        
        default:
            break
        }
        
        return cell;
        
    }
}


extension CiteDetailViewController:UITableViewDelegate{
    
}
