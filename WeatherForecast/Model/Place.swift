//
//  Place.swift
//  WeatherForecast
//
//  Created by Katarina Tomic on 11/17/19.
//  Copyright © 2019 Katarina Tomic. All rights reserved.
//

import Foundation

class Place {
    var name: String
    var state: String
    var stateFull: String
    var country: String
    var countryFull: String
    var region: String
    var regionFull: String
    var continent: String
    var continentFull: String

    init(dict: [String: Any]) {
        self.name = dict["name"] as! String
        self.state = dict["state"] as! String
        self.stateFull = dict["stateFull"] as! String
        self.country = dict["country"] as! String
        self.countryFull = dict["countryFull"] as! String
        self.region = dict["region"] as! String
        self.regionFull = dict["regionFull"] as! String
        self.continent = dict["continent"] as! String
        self.continentFull = dict["continentFull"] as! String
    }
}
