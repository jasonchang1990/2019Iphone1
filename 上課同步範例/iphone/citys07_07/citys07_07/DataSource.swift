//
//  DataSource.swift
//  citys07_07
//
//  Created by Robert on 2019/7/7.
//  Copyright © 2019 ios1. All rights reserved.
//

import Foundation
class DataSource{
    
    lazy var citys:[[String:Any]] = {
        //default value使用closure的執行，就可以有多行程式
        //只會被執行一次;
        //1.Bundle取得絕對路徑
        let path = Bundle.main.url(forResource: "citylist", withExtension: "plist")!
        return  NSArray(contentsOf: path) as! [[String:Any]]
    }()
}
