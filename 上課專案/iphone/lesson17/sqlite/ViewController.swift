//
//  ViewController.swift
//  sqlite
//
//  Created by Robert on 2019/6/18.
//  Copyright © 2019 ios1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func awakeFromNib() {
        super.awakeFromNib()
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
               print("copy成功")
            }else{
               print("copy失敗")
            }
            print("dbTargetPath路徑\(targetpath)");
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

