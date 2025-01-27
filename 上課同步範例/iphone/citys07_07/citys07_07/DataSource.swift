//
//  DataSource.swift
//  citys07_07
//
//  Created by Robert on 2019/7/7.
//  Copyright © 2019 ios1. All rights reserved.
//

import Foundation
class DataSource{
    //type store property
    static var citys:[[String:Any]] = {
        //default value使用closure的執行，就可以有多行程式
        //只會被執行一次;
        //1.Bundle取得絕對路徑
        let path = Bundle.main.url(forResource: "citylist", withExtension: "plist")!
        return  NSArray(contentsOf: path) as! [[String:Any]]
    }()
    
    private init(){
        
    }
    
    /*
    static var names:[String]{
        //type computed property
        //呼叫一次就執行一次
        var names = [String]();
        for cityDic in citys{
            let cityName = cityDic["City"] as! String
            names.append(cityName)
        }
        return names;
    }
 */
    
    static var names:[String] = {
        //type property,使用default value 的closure
        //只會執行一次
        var names = [String]();
        for cityDic in citys{
            let cityName = cityDic["City"] as! String
            names.append(cityName)
        }
        return names;
    }()
    
    static var continents:[String] = {
        //type property,使用default value 的closure
        //只會執行一次
        var continentNames = Set<String>();
        for cityDic in citys{
            let continentName = cityDic["Continent"] as! String
            continentNames.insert(continentName)
        }
        return continentNames.sorted()
    }()
    
    static var countries:[String] = {
        //type property,使用default value 的closure
        //只會執行一次
        var countryNames = Set<String>();
        for cityDic in citys{
            let countryName = cityDic["Country"] as! String
            countryNames.insert(countryName)
        }
        return countryNames.sorted()
    }()
}
