//
//  DataSource.swift
//  sqlite
//
//  Created by Robert on 2019/6/18.
//  Copyright © 2019 ios1. All rights reserved.
//

import Foundation
class DataSource{
    //singleton class
    static var defaults:DataSource = {
        //這裏只會被執行一次
        print("只執行一次")
        let cityListPath = Bundle.main.path(forResource: "citylist", ofType: "plist")!
        let dbSourcePath = Bundle.main.path(forResource: "city", ofType: "db")!
        let targetPaths = NSSearchPathForDirectoriesInDomains(
            .documentDirectory,
            .userDomainMask,
            true);
        let targetpath = targetPaths.first!
        //print(targetpath)
        let dbTargetPath = "\(targetpath)/citys.db"
        if !FileManager.default.fileExists(atPath: dbTargetPath){
            if (try? FileManager.default.copyItem(atPath: dbSourcePath, toPath: dbTargetPath)) != nil {
                fillSQLData(plistPath: cityListPath, dbPath: dbTargetPath)
            }else{
                print("copy失敗")
            }
            print("dbTargetPath路徑\(targetpath)");
        }
        return DataSource();
    }()
    
    static func fillSQLData(plistPath:String, dbPath:String){
        let citys = NSArray(contentsOfFile: plistPath) as? [[String:Any]]
        for cityData in citys!{
            print(cityData)
        }
    }
}
