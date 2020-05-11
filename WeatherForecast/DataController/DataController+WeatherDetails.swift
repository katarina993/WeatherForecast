//
//  DataController+WeatherDetails.swift
//  WeatherForecast
//
//  Created by Katarina Tomic on 12/2/19.
//  Copyright © 2019 Katarina Tomic. All rights reserved.
//

import Foundation

extension DataController {
    
    func getWeatherForecast(city: City, completion: @escaping (WeatherForecast) -> Void) {
        
        var queryParams = [String: String]()
        queryParams["p"] = "\(city.location.lat),\(city.location.long)"
        executeRequest(endpoint: "forecasts/closest", method: .get, queryParams: queryParams) { (data, statusCode, error) in
          
          if statusCode == .ok {
            if let data = data {
                let jsonObject = try! JSONSerialization.jsonObject(with: data) as! [String: Any]
                let forcastJsonArray = jsonObject["response"] as! [[String: Any]]
                let weatherForcast = forcastJsonArray.map({
                    WeatherForecast(dict: $0)
                    }).first!
//                let array = [Int]()
//                let arrayOfStrings = array.map {
//                    "\($0)"
//                }
                print(forcastJsonArray)
                completion(weatherForcast)
            }
          } else {
            // error
          }
          
        }
    }
    
    
}
