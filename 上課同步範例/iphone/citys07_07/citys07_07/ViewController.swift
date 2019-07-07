//
//  ViewController.swift
//  citys07_07
//
//  Created by Robert on 2019/7/7.
//  Copyright © 2019 ios1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var cityList:UITextView!;
    @IBOutlet var countriesList:UITextView!;
    @IBOutlet var continentList:UITextView!;
    
    var namesString = "";
    var countriesString = "";
    var continentString = "";
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //for CityName
        for cityName in DataSource.names{
            namesString += "\(cityName)\n\n"
           
        }
        cityList.text = namesString;
        
        //for CountryName
        for countryName in DataSource.countries{
           countriesString += "\(countryName) \n\n"
        }
        
        countriesList.text = countriesString;
        
        //for ContinentName
        for continent in DataSource.continents{
            continentString += "\(continent) \n\n";
        }
        continentList.text = continentString;
    }


}

