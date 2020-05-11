//
//  WeatherForecast.swift
//  WeatherForecast
//
//  Created by Katarina Tomic on 12/4/19.
//  Copyright © 2019 Katarina Tomic. All rights reserved.
//

import Foundation

class WeatherForecast {
    var location: Location
    var interval: String
    var profile: CityProfile
    var periods: [WeatherPeriod]?
    
    
    init(dict: [String: Any]) {
        self.location = Location(dict: dict["loc"] as! [String: Any])
        self.interval = dict["interval"] as! String
        self.profile = CityProfile(dict: dict["profile"] as! [String: Any])
        let jsonPeriods = dict["periods"] as! [[String: Any]]
        self.periods = jsonPeriods.map({
            WeatherPeriod(dict: $0)
        })
}

    
}
