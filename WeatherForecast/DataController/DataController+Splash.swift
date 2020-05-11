//
//  DataController+Splash.swift
//  WeatherForecast
//
//  Created by Katarina Tomic on 11/10/19.
//  Copyright © 2019 Katarina Tomic. All rights reserved.
//

import Foundation

extension DataController{
    
     func initialLoad(completion: @escaping ([City]) -> Void) {
        var queryParams = [String: String]()
        queryParams["p"] = "44.786568,20.448921"
        queryParams["limit"] = "50"
        queryParams["radius"] = "50mi"
        
        executeRequest(endpoint: "places/closest", method: .get, queryParams: queryParams) { (data, statusCode, error) in
          
          if statusCode == .ok {
            if let data = data {
                let jsonObject = try! JSONSerialization.jsonObject(with: data) as! [String: Any]
                let citiesJsonArray = jsonObject["response"] as! [[String: Any]]
                let cities = citiesJsonArray.map({
                    City(dict: $0)
                })
                
                print(cities)
                completion(cities)
            }
          } else {
            if let data = data {
                let jsonObject = try! JSONSerialization.jsonObject(with: data) as! [String: Any]
                let errorDict = jsonObject["error"] as! [String: Any]
                let error = ErrorResponse(dict: errorDict)
                print(error.description)
            }
          }
          
        }
    }
      

}
