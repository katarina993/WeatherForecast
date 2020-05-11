//
//  DataController.swift
//  WeatherForecast
//
//  Created by Katarina Tomic on 11/10/19.
//  Copyright © 2019 Katarina Tomic. All rights reserved.
//

import Foundation

let baseUrl = "https://api.aerisapi.com/"
let clientId = "FvCdbrTgfIzOorzKXlpfr"
let clientSecret = "nJQjousbZSp0KMp6ndBvlgQ9Grp8cndkRvdkA83p"


enum HTTPMethod: String {
  case get = "GET"
  case post = "POST"
}

enum HTTPStatusCode {
  case ok
  case notFound
  case unknown
  
  init(statusCode: Int) {
    switch statusCode {
    case 200:
      self = .ok
    case 201:
      self = .ok
    case 404:
      self = .notFound
    default:
      self = .unknown
    }
  }
}

class DataController {
  
  static let shared = DataController()
  
  private init() {}
  
func executeRequest(endpoint: String,
                    method: HTTPMethod,
                    queryParams: [String: String]? = nil,
                    body: Data? = nil,
                    completion: @escaping (Data?, HTTPStatusCode, Error?) -> Void)
{
    var components = URLComponents(string: baseUrl + endpoint)!
    var params = [String: String]()
    if queryParams != nil {
        queryParams!.forEach { (k,v) in params[k] = v }
    }
    params["client_id"] = clientId
    params["client_secret"] = clientSecret

    components.queryItems = params.map { (key, value) in
        URLQueryItem(name: key, value: value)
    }
    var request = URLRequest(url: components.url!)
    request.httpMethod = method.rawValue
    request.httpBody = body
    
    // Add header field
    request.addValue("application/json", forHTTPHeaderField: "Content-Type")

    let dataTask = URLSession.shared.dataTask(with: request) { (data, response, error) in
     
        let statusCode = (response as! HTTPURLResponse).statusCode
        #if DEBUG
        if data != nil {
            if let logMessage = String(data: data!, encoding: .utf8) {
                NSLog("Requested: \(endpoint)")
                NSLog("Status code: \(statusCode)")
                NSLog("Response: \(logMessage)")
            }
        }
        #endif
     
        let httpStatusCode = HTTPStatusCode(statusCode: statusCode)
        completion(data, httpStatusCode, error)}
      dataTask.resume()
    }

}
