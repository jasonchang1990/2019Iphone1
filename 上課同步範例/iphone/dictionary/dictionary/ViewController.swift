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
}


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        run();
    }


}

