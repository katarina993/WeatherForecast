//
//  WeatherPeriod.swift
//  WeatherForecast
//
//  Created by Katarina Tomic on 12/7/19.
//  Copyright © 2019 Katarina Tomic. All rights reserved.
//

import Foundation

class WeatherPeriod {
    var timestamp: Double
    var validTime: String?
    var dateTimeISO: String?
    var maxTempC: Int
    var maxTempF: Int
    var minTempC: Int
    var minTempF: Int
    var avgTempC: Int?
    var avgTempF: Int?
    var tempC: Int?
    var tempF: Int?
    var pop: Int?
    var precipMM: Double?
    var precipIN: Double?
    var iceaccum: Double?
    var iceaccumMM: Double?
    var iceaccumIN: Double?
    var maxHumidity: Int?
    var minHumidity: Int?
    var humidity: Int?
    var uvi: Int?
    var pressureMB: Int?
    var pressureIN: Double?
    var sky: Int?
    var snowCM: Int?
    var snowIN: Int?
    var feelslikeC: Int?
    var feelslikeF: Int?
    var minFeelslikeC: Int?
    var minFeelslikeF: Int?
    var maxFeelslikeC: Int?
    var maxFeelslikeF: Int?
    var avgFeelslikeC: Int?
    var avgFeelslikeF: Int?
    var dewpointC: Int?
    var dewpointF: Int?
    var maxDewpointC: Int?
    var maxDewpointF: Int?
    var minDewpointC: Int?
    var minDewpointF: Int?
    var avgDewpointC: Int?
    var avgDewpointF: Int?
    var windDirDEG: Int?
    var windDir: String?
    var windDirMaxDEG: Int?
    var windDirMax: String?
    var windDirMinDEG: Int?
    var windDirMin: String?
    var windGustKTS: Int?
    var windGustKPH: Int?
    var windGustMPH: Int?
    var windSpeedKTS: Int?
    var windSpeedKPH: Int?
    var windSpeedMPH: Int?
    var windSpeedMaxKTS: Int?
    var windSpeedMaxKPH: Int?
    var windSpeedMaxMPH: Int?
    var windSpeedMinKTS: Int?
    var windSpeedMinKPH: Int?
    var windSpeedMinMPH: Int?
    var windDir80mDEG: Int?
    var windDir80m: String?
    var windDirMax80mDEG: Int?
    var windDirMax80m: String?
    var windDirMin80mDEG: Int?
    var windDirMin80m: String?
    var windGust80mKTS: Int?
    var windGust80mKPH: Int?
    var windGust80mMPH: Int?
    var windSpeed80mKTS: Int?
    var windSpeed80mKPH: Int?
    var windSpeed80mMPH: Int?
    var windSpeedMax80mKTS: Int?
    var windSpeedMax80mKPH: Int?
    var windSpeedMax80mMPH: Int?
    var windSpeedMin80mKTS: Int?
    var windSpeedMin80mKPH: Int?
    var windSpeedMin80mMPH: Int?
    var weather: String?
    var weatherPrimary: String?
    var weatherPrimaryCoded: String?
    var cloudsCoded: String?
    var icon: String?
    var solradWM2: Int?
    var solradMinWM2: Int?
    var solradMaxWM2: Int?
    var isDay: Bool?
    var sunrise: Double?
    var sunriseISO: String?
    var sunset: Double?
    var sunsetISO: String?
    
    
    init(dict: [String: Any]) {
        self.timestamp = dict["timestamp"] as! Double
        self.validTime = dict["validTime"] as? String
        self.dateTimeISO = dict["dateTimeISO"] as? String
        self.maxTempC = dict["maxTempC"] as! Int
        self.maxTempF = dict["maxTempF"] as! Int
        self.minTempC = dict["minTempC"] as! Int
        self.minTempF = dict["minTempF"] as! Int
        self.avgTempC = dict["avgTempC"] as? Int
        self.avgTempF = dict["avgTempF"] as? Int
        self.tempC = dict["tempC"] as? Int
        self.tempF = dict["tempF"] as? Int
        self.pop = dict["pop"] as? Int
        self.precipMM = dict["precipMM"] as? Double
        self.precipIN = dict["precipIN"] as? Double
        self.iceaccum = dict["iceaccum"] as? Double
        self.iceaccumMM = dict["iceaccumMM"] as? Double
        self.iceaccumIN = dict["iceaccumIN"] as? Double
        self.maxHumidity = dict["maxHumidity"] as? Int
        self.minHumidity = dict["minHumidity"] as? Int
        self.humidity = dict["humidity"] as? Int
        self.uvi = dict["uvi"] as? Int
        self.pressureMB = dict["pressureMB"] as? Int
        self.pressureIN = dict["pressureIN"] as? Double
        self.sky = dict["sky"] as? Int
        self.snowCM = dict["snowCM"] as? Int
        self.snowIN = dict["snowIN"] as? Int
        self.feelslikeC = dict["feelslikeC"] as? Int
        self.feelslikeF = dict["feelslikeF"] as? Int
        self.minFeelslikeC = dict["minFeelslikeC"] as? Int
        self.minFeelslikeF = dict["minFeelslikeF"] as? Int
        self.maxFeelslikeC = dict["maxFeelslikeC"] as? Int
        self.maxFeelslikeF = dict["maxFeelslikeF"] as? Int
        self.avgFeelslikeC = dict["avgFeelslikeC"] as? Int
        self.avgFeelslikeF = dict["avgFeelslikeF"] as? Int
        self.dewpointC = dict["dewpointC"] as? Int
        self.dewpointF = dict["dewpointF"] as? Int
        self.maxDewpointC = dict["maxDewpointC"] as? Int
        self.maxDewpointF = dict["maxDewpointF"] as? Int
        self.minDewpointC = dict["minDewpointC"] as? Int
        self.minDewpointF = dict["minDewpointF"] as? Int
        self.avgDewpointC = dict["avgDewpointC"] as? Int
        self.avgDewpointF = dict["avgDewpointF"] as? Int
        self.windDirDEG = dict["windDirDEG"] as? Int
        self.windDir = dict["windDir"] as? String
        self.windDirMaxDEG = dict["windDirMaxDEG"] as? Int
        self.windDirMax = dict["windDirMax"] as? String
        self.windDirMinDEG = dict["windDirMinDEG"] as? Int
        self.windDirMin = dict["windDirMin"] as? String
        self.windGustKTS = dict["windGustKTS"] as? Int
        self.windGustKPH = dict["windGustKPH"] as? Int
        self.windGustMPH = dict["windGustMPH"] as? Int
        self.windSpeedKTS = dict["windSpeedKTS"] as? Int
        self.windSpeedKPH = dict["windSpeedKPH"] as? Int
        self.windSpeedMPH = dict["windSpeedMPH"] as? Int
        self.windSpeedMaxKTS = dict["windSpeedMaxKTS"] as? Int
        self.windSpeedMaxKPH = dict["windSpeedMaxKPH"] as? Int
        self.windSpeedMaxMPH = dict["windSpeedMaxMPH"] as? Int
        self.windSpeedMinKTS = dict["windSpeedMinKTS"] as? Int
        self.windSpeedMinKPH = dict["windSpeedMinKPH"] as? Int
        self.windSpeedMinMPH = dict["windSpeedMinMPH"] as? Int
        self.windDir80mDEG = dict["windDir80mDEG"] as? Int
        self.windDir80m = dict["windDir80m"] as? String
        self.windDirMax80mDEG = dict["windDirMax80mDEG"] as? Int
        self.windDirMin80mDEG = dict["windDirMin80mDEG"] as? Int
        self.windDirMin80m = dict["windDirMin80m"] as? String
        self.windGust80mKTS = dict["windGust80mKTS"] as? Int
        self.windGust80mKPH = dict["windGust80mKPH"] as? Int
        self.windGust80mMPH = dict["windGust80mMPH"] as? Int
        self.windSpeed80mKTS = dict["windSpeed80mKTS"] as? Int
        self.windSpeed80mKPH = dict["windSpeed80mKPH"] as? Int
        self.windSpeed80mMPH = dict["windSpeed80mMPH"] as? Int
        self.windSpeedMax80mKTS = dict["windSpeedMax80mKTS"] as? Int
        self.windSpeedMax80mKPH = dict["windSpeedMax80mKPH"] as? Int
        self.windSpeedMax80mMPH = dict["windSpeedMax80mMPH"] as? Int
        self.windSpeedMin80mKTS = dict["windSpeedMin80mKTS"] as? Int
        self.windSpeedMin80mKPH = dict["windSpeedMin80mKPH"] as? Int
        self.windSpeedMin80mMPH = dict["windSpeedMin80mMPH"] as? Int
        self.weather = dict["weather"] as? String
        self.weatherPrimary = dict["weatherPrimary"] as? String
        self.cloudsCoded = dict["cloudsCoded"] as? String
        self.icon = dict["icon"] as? String
        self.solradWM2 = dict["solradWM2"] as? Int
        self.solradMinWM2 = dict["solradMinWM2"] as? Int
        self.solradMaxWM2 = dict["solradMaxWM2"] as? Int
        self.isDay = dict["isDay"] as? Bool
        self.sunrise = dict["sunrise"] as? Double
        self.sunriseISO = dict["sunriseISO"] as? String
        self.sunset = dict["sunset"] as? Double
        self.sunsetISO = dict["sunsetISO"] as? String
       }

    //https://www.aerisweather.com/support/docs/api/reference/weather-codes/
    func getWeatherByCode() -> WeatherCode {
        if cloudsCoded == "CL" || cloudsCoded == "FW" {
            return .sun
        } else if cloudsCoded == "SC" {
            return .partialyCloudly
        } else {
            let lastPartOfCode = weatherPrimaryCoded?.split(separator: ":").last
            switch lastPartOfCode {
            case "BR", "F":
                return .cloudly
            case "BS", "FR", "SI", "WM", "S", "SW":
                return .snow
            case "R", "RW", "RS":
                return .rain
            case "T":
                return .thunderstorm
            default:
                return .cloudly
            }
        }
    }
}
