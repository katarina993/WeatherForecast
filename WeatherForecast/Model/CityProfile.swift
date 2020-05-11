//
//  CityProfile.swift
//  WeatherForecast
//
//  Created by Katarina Tomic on 11/17/19.
//  Copyright © 2019 Katarina Tomic. All rights reserved.
//

import Foundation

class CityProfile {
    
    var elevM: Int?
    var elevFT: Int?
    var pop: Int?
    var tz: String?
    var tzname: String?
    var tzoffset: Int?
    var isDST: Bool?
    
    init(dict: [String: Any]) {
          self.elevM = dict["elevM"] as? Int
          self.elevFT = dict["elevFT"] as? Int
          self.pop = dict["pop"] as? Int
          self.tz = dict["tz"] as? String
          self.tzname = dict["tzname"] as? String
          self.tzoffset = dict["tzoffset"] as? Int
          self.isDST = dict["isDST"] as? Bool
    }
}
