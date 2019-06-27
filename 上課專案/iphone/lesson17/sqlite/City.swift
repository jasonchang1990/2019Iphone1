//
//  City.swift
//  sqlite
//
//  Created by Robert on 2019/6/27.
//  Copyright © 2019 ios1. All rights reserved.
//

import Foundation
class City{
    var city:String!;
    var continent:String!;
    var country:String!;
    var image:String!;
    var local:String!;
    var latitude:Double!;
    var longitude:Double!;
    var url:String!;
    var userRate:String!;
    
    init(city:String, continent:String, country:String, image:String, local:String, lat latitude:Double, lon longitude:Double, url:String, userRate:String = ""){
        self.city = city;
        self.continent = continent;
        self.country = country;
        self.image = image;
        self.local = local;
        self.latitude = latitude;
        self.longitude = longitude;
        self.url = url;
        self.userRate = userRate;
    }
}
