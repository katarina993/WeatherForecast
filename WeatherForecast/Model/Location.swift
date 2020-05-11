//
//  Location.swift
//  WeatherForecast
//
//  Created by Katarina Tomic on 11/17/19.
//  Copyright © 2019 Katarina Tomic. All rights reserved.
//

import Foundation

class Location{
    var lat: Double
    var long: Double

    init(dict: [String: Any]) {
       self.lat = dict["lat"] as! Double
       self.long = dict["long"] as! Double
    }
}
