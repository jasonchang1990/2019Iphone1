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
        print("dbTargetPath路徑\(targetpath)");
        if !FileManager.default.fileExists(atPath: dbTargetPath){
            if (try? FileManager.default.copyItem(atPath: dbSourcePath, toPath: dbTargetPath)) != nil {
                fillSQLData(plistPath: cityListPath, dbPath: dbTargetPath)
            }else{
                print("copy失敗")
            }
            
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
            var statements:OpaquePointer!;
            if sqlite3_prepare_v2(
                db,
                sqlInsertString,
                -1,
                &statements,
                nil) == SQLITE_OK{
                print("statements ok");
            }else{
                
                sqlite3_finalize(statements)
                sqlite3_close(db);
                fatalError("statements 失敗")
                return
            }
            
            for (key, value) in cityData{
                switch key {
                    case "City":
                        sqlite3_bind_text(statements, 1, (value as! NSString).utf8String, -1, nil);
                    case "Continent":
                        sqlite3_bind_text(statements, 2, (value as! NSString).utf8String, -1, nil);
                    
                    case "Country":
                        sqlite3_bind_text(statements, 3, (value as! NSString).utf8String, -1, nil);
                    
                    case "Image":
                        sqlite3_bind_text(statements, 4, (value as! NSString).utf8String, -1, nil);
                    
                    case "Local":
                        sqlite3_bind_text(statements, 5, (value as! NSString).utf8String, -1, nil);
                    
                    case "lat":
                        sqlite3_bind_double(statements, 6, value as! Double);
                    
                    case "long":
                        sqlite3_bind_double(statements, 7, value as! Double);
                    
                    case "url":
                        sqlite3_bind_text(statements, 8, (value as! NSString).utf8String, -1, nil);
                    default:break
                }               
                
            }
            
            if sqlite3_step(statements) == SQLITE_DONE {
                print("insert 成功");
            }
        }
    }
}
