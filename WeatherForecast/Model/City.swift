//
//  City.swift
//  WeatherForecast
//
//  Created by Katarina Tomic on 11/14/19.
//  Copyright © 2019 Katarina Tomic. All rights reserved.
//

import Foundation

class City {
    
    var location: Location
    var place: Place
    var profile: CityProfile
    
    init(dict: [String: Any]) {
        self.location = Location(dict: dict["loc"] as! [String: Any])
        self.place = Place(dict: dict["place"] as! [String: Any])
        self.profile = CityProfile(dict: dict["profile"] as! [String: Any])
    }
    
}
