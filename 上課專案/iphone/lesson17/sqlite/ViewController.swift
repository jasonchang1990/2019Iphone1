//
//  ViewController.swift
//  sqlite
//
//  Created by Robert on 2019/6/18.
//  Copyright © 2019 ios1. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    var allCitys:[City]!;
    let searchController = UISearchController(searchResultsController: nil);
    
    override func awakeFromNib() {
        super.awakeFromNib()
        let dataSource = DataSource.defaults;
        allCitys = dataSource.allCitys;
        searchController.searchResultsUpdater = self;
       
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableHeaderView = searchController.searchBar
    }


}

extension ViewController{
    //UITableViewDataSource
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return allCitys.count;
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let city = allCitys[indexPath.row];
        let cell = tableView.dequeueReusableCell(withIdentifier: "CELL", for: indexPath) as! CityCell;
        cell.cityImageView.image = UIImage(named: city.image)
        cell.cityLabel.text = city.city;
        cell.countryLabel.text = city.country;
        cell.continentLabel.text = city.continent;
        return cell;
    }
}

extension ViewController:UISearchResultsUpdating{
    func updateSearchResults(for searchController: UISearchController){
        let searchBar = searchController.searchBar;
        if let searchString = searchBar.text, searchString != ""{
            allCitys = DataSource.defaults.selectedCity(searchWord: searchBar.text!)
            
        }else{
            allCitys = DataSource.defaults.allCitys;
        }
        tableView.reloadData();
    }
}
