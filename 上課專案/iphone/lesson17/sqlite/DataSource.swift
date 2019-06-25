//
//  DataSource.swift
//  sqlite
//
//  Created by Robert on 2019/6/18.
//  Copyright © 2019 ios1. All rights reserved.
//

import Foundation
import SQLite3

class DataSource{
    //singleton class
    static var db:OpaquePointer!;
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
        if sqlite3_open(dbPath, &db) == SQLITE_OK{
            print("db open")
        }else{
            sqlite3_close(db)
            fatalError("db open error")
            return;
        }
        
    
        for cityData in citys!{
            let sqlInsertString = "INSERT INTO city (cityName, continent, country, image, description, lat, lon, url) VALUES (?, ?, ?, ?, ?, ?,?,?)"
            print(cityData)
        }
    }
}
