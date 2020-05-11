//
//  ErrorResponse.swift
//  WeatherForecast
//
//  Created by Katarina Tomic on 12/21/19.
//  Copyright © 2019 Katarina Tomic. All rights reserved.
//

import Foundation

class ErrorResponse {
    var code: String
    var description: String
    
    init(dict: [String: Any]) {
        self.code = dict["code"] as! String
        self.description = dict["description"] as! String
    }
}
