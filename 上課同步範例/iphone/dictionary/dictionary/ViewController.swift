//
//  ViewController.swift
//  dictionary
//
//  Created by Robert on 2019/5/26.
//  Copyright © 2019 ios1. All rights reserved.
//

import UIKit

func run(){
    var namesOfIntegers = [Int: String]()
    namesOfIntegers[16] = "sixteen"
    print(namesOfIntegers[16] ?? "沒有這個key");
    namesOfIntegers = [:]
    print(namesOfIntegers);
    i = i + 1
    print(i);
}

func run1(){
    var airports:[String:String] = [
        "YYZ":"Toronto",
        "DUB":"Dublin",
    ]
    print("airports's count:\(airports.count)")
    if !airports.isEmpty{
        print("不是空的")
    }
    airports["LHR"] = "London"
    airports["LHR"] = "London Heathrow"
    print(airports)
    if let airportName = airports["DUb"] {
        print("airportName=\(airportName)");
    }else{
        print("no key");
    }
    
    airports["APL"] = "Apple Internatinal"
    airports["APL"] = nil
    
    print(airports)
    
    for (airportCode, airportName) in airports{
        print("\(airportCode):\(airportName)");
    }
    let keys = Array(airports.keys)
    let values = Array(airports.values)
    print("keys:\(keys)");
    print("values:\(values)");
}


var i = 0;


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        run1()
    }


}

