//
//  ViewController.swift
//  while
//
//  Created by Robert on 2019/6/2.
//  Copyright © 2019 ios1. All rights reserved.
//

import UIKit

func runWhile(){
    let finalSquare = 25;
    var board = [Int](repeating: 0, count: finalSquare + 1)
    board[03] = +08;
    board[06] = +11;
    board[09] = +09;
    board[10] = +02;
    board[14] = -10;
    board[19] = -11;
    board[22] = -02;
    board[24] = -08;
    
    var square = 0;
    var diceRoll = 0;
    var i = 0;
    while square < finalSquare{
        i += 1;
        diceRoll += 2;
        if diceRoll >= 7 {
            diceRoll = 1;
        }
        
        square += diceRoll;
        
        if square < board.count{
            square += board[square];
        }
    }
    
    print("game over!")
    print("執行的次數\(i)");
}


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        runWhile();
    }


}

