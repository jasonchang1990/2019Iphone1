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
    //0627
    static var dbTargetPath:String!;
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
        
        dbTargetPath = "\(targetpath)/citys.db"
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
            //fatalError("db open error")
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
                //fatalError("statements 失敗")
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
                sqlite3_finalize(statements)
            }
        }
    }
    
    var allCitys:[City]!{
        createDb()
        let allCitySqlString = "select * FROM city"
        var statement:OpaquePointer!;
        if sqlite3_prepare_v2(DataSource.db, allCitySqlString, -1, &statement, nil) == SQLITE_OK{
            print("prepare_v2 ok");
        }else{
            print("prepare_v2 error");
            return nil;
        }
        //0627
        var citys = [City]();
        while sqlite3_step(statement) == SQLITE_ROW {
            
            let cityName = String(cString: sqlite3_column_text(statement, 0))
            let continent = String(cString: sqlite3_column_text(statement, 1))
            let country = String(cString: sqlite3_column_text(statement, 2))
            let image = String(cString: sqlite3_column_text(statement, 3))
            let description = String(cString: sqlite3_column_text(statement, 4))
            let latitude = sqlite3_column_double(statement, 5)
            let longitude = sqlite3_column_double(statement, 6)
            let url = String(cString: sqlite3_column_text(statement, 7))
            let city = City(city: cityName, continent: continent, country: country, image: image, local: description, lat: latitude, lon: longitude, url: url);
            citys.append(city);
        }
        sqlite3_finalize(statement)
        sqlite3_close(DataSource.db)
        return citys;
    }
    
    func createDb(){
        if sqlite3_open(DataSource.dbTargetPath, &DataSource.db) == SQLITE_OK{
            print("db open");
        }else{
            print("db open failure");
            return;
        }
    }
    
    func selectedCity(searchWord:String)->[City]?{
        createDb();
        let selectedSqlString = "SELECT * FROM city WHERE cityName like ? OR continent like ? OR description like ? OR country like ?"
        var statement:OpaquePointer!;
        if sqlite3_prepare_v2(DataSource.db, selectedSqlString, -1, &statement, nil) == SQLITE_OK{
            print("prepare_v2 ok")
        }else{
            print("prepare_v2 error")
            sqlite3_finalize(statement)
            return nil;
        }
        
        sqlite3_bind_text(statement, 1, ("%\(searchWord)%" as NSString).utf8String, -1, nil)
        sqlite3_bind_text(statement, 2, ("%\(searchWord)%" as NSString).utf8String, -1, nil)
        sqlite3_bind_text(statement, 3, ("%\(searchWord)%" as NSString).utf8String, -1, nil)
        sqlite3_bind_text(statement, 4, ("%\(searchWord)%" as NSString).utf8String, -1, nil)
        
        var citys = [City]();
        while sqlite3_step(statement) == SQLITE_ROW{
            let cityName = String(cString: sqlite3_column_text(statement, 0))
            let continent = String(cString: sqlite3_column_text(statement, 1))
            let country = String(cString: sqlite3_column_text(statement, 2))
            let image = String(cString: sqlite3_column_text(statement, 3))
            let description = String(cString: sqlite3_column_text(statement, 4))
            let latitude = sqlite3_column_double(statement, 5)
            let longitude = sqlite3_column_double(statement, 6)
            let url = String(cString: sqlite3_column_text(statement, 7))
            let city = City(city: cityName, continent: continent, country: country, image: image, local: description, lat: latitude, lon: longitude, url: url);
            citys.append(city);
        }
        sqlite3_finalize(statement)
        sqlite3_close(DataSource.db)
        print(citys)
        return citys;
    }
    
    func deleteCity(cityName:String) -> Bool{
       
        createDb();
        let deleteSqlString = "DELETE FROM city where cityName = '\(cityName)'"
        var statement:OpaquePointer!;
        if sqlite3_prepare_v2(DataSource.db, deleteSqlString, -1, &statement, nil) == SQLITE_OK{
            print("prepare_v2 ok")
        }else{
            print("prepare_v2 error")
            sqlite3_finalize(statement)
            return false;
        }
        
        //sqlite3_bind_text(statement, 1, ("%\("Akihabara.jpg")%" as NSString).utf8String, -1, nil)
       
        
        if sqlite3_step(statement) != SQLITE_DONE{
            sqlite3_finalize(statement)
            print("刪除失敗");
            return false;
        }
        print("刪除成功");
        
 
       sqlite3_finalize(statement)
        sqlite3_close(DataSource.db)
        return true;
    }
    
    func insertCity(cityName:String, countryName:String)->Bool{
        createDb();
        let selectedSqlString = "INSERT INTO city (cityName, country, continent, image, description, lat, lon, url) VALUES (?,?,?,?,?,?,?,?)"
        var statement:OpaquePointer!;
        if sqlite3_prepare_v2(DataSource.db, selectedSqlString, -1, &statement, nil) == SQLITE_OK{
            print("prepare_v2 ok")
        }else{
            print("prepare_v2 error")
            sqlite3_finalize(statement)
            return false;
        }
        
        sqlite3_bind_text(statement, 1, ("(cityName)" as NSString).utf8String, -1, nil)
        sqlite3_bind_text(statement, 2, ("\(countryName)" as NSString).utf8String, -1, nil)
        sqlite3_bind_text(statement, 3, ("asia" as NSString).utf8String, -1, nil)
        sqlite3_bind_text(statement, 4, ("image1.jpg" as NSString).utf8String, -1, nil)
        sqlite3_bind_text(statement, 5, ("" as NSString).utf8String, -1, nil)
        sqlite3_bind_double(statement, 6, 23.1234)
        sqlite3_bind_double(statement, 7, 21.5678)
        sqlite3_bind_text(statement, 8, ("http://www.google.com.tw" as NSString).utf8String, -1, nil)
        
        
        if sqlite3_step(statement) != SQLITE_DONE{
            return false;
        }
        sqlite3_finalize(statement)
        sqlite3_close(DataSource.db)
        
        return true;
    }
    
}
