//
//  CiteDetailViewController.swift
//  CustomCell
//
//  Created by Robert on 2019/5/30.
//  Copyright © 2019 ML. All rights reserved.
//

import UIKit

class CiteDetailViewController: UIViewController {
    
    
    @IBOutlet var tableView:UITableView!;
    var city:City!;
    
    @IBOutlet var cityImageView:UIImageView!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cityImageView.image = UIImage(named: city.image)
        //0611
        title = city.city;
        
        tableView.estimatedRowHeight = 38.0;
        tableView.rowHeight = UITableView.automaticDimension;
    }
    

   

}
//0611
extension CiteDetailViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 6;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "CELL", for: indexPath) as! DetailViewCell ;
        
        switch indexPath.row {
        case 0:
            cell.fieldLabel.text = "五大州"
            cell.valueLabel.text = city.continent;
        case 1:
            cell.fieldLabel.text = "國家"
            cell.valueLabel.text = city.country;
        case 2:
            cell.fieldLabel.text = "說明"
            cell.valueLabel.text = city.local;
        case 3:
            cell.fieldLabel.text = "緯度"
            cell.valueLabel.text = String(city.latitude);
        case 4:
            cell.fieldLabel.text = "經度"
            cell.valueLabel.text = String(city.longitude);
        case 5:
            cell.fieldLabel.text = "網址"
            cell.valueLabel.text = city.url;
        
        default:
            break
        }
        
        return cell;
        
    }
}


extension CiteDetailViewController:UITableViewDelegate{
    
}
