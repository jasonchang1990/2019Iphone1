//
//  CustomCell.swift
//  CustomCell
//
//  Created by Robert on 2019/5/21.
//  Copyright © 2019 ML. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
    @IBOutlet var cityImageView:UIImageView!
    @IBOutlet var cityNameLabel:UILabel!
    @IBOutlet var countryNameLabel:UILabel!
    @IBOutlet var continentNameLabel:UILabel!
    
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
