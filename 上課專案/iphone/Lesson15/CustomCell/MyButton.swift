//
//  MyButton.swift
//  CustomCell
//
//  Created by Robert on 2019/6/4.
//  Copyright © 2019 ML. All rights reserved.
//

import UIKit

class MyButton: UIButton {
    var buttonCount:Int!;
    
    init(title:String, forgroundColor:UIColor, backgroundColor:UIColor, buttonCount:Int){
        self.buttonCount = buttonCount
        
        super.init(frame: CGRect.zero)
        setTitle(title, for: .normal)
        tintColor = forgroundColor
        //currentTitleColor = forgroundColor;
        self.backgroundColor = backgroundColor
        
    }
    
    convenience init(title:String){
        self.init(title:title, forgroundColor:UIColor.white, backgroundColor:UIColor.gray, buttonCount:0)
    }

    required init?(coder aDecoder: NSCoder) {
        buttonCount = 0
        super.init(coder: aDecoder);
    }
    
    override func awakeFromNib() {
        super.awakeFromNib();
        buttonCount = 5;
        print("awakeFromNib")
    }

}
