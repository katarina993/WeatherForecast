//
//  WeatherDetailsViewController.swift
//  WeatherForecast
//
//  Created by Katarina Tomic on 11/28/19.
//  Copyright © 2019 Katarina Tomic. All rights reserved.
//

import UIKit

class WeatherDetailsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var maxTempLabel: UILabel!
    @IBOutlet weak var minTempLabel: UILabel!
    @IBOutlet weak var weatherImage: UIImageView!
    @IBOutlet weak var forecastTableView: UITableView!
    
    var city: City? = nil
    private var forecast: [WeatherPeriod]? = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        title = city?.place.name
        setupTableView()
        loadData()
        // Do any additional setup after loading the view.
    }
    
    func setupTableView(){
        forecastTableView.dataSource = self
        forecastTableView.delegate = self
    }
    
    func loadData() {
        DataController.shared.getWeatherForecast(city: city!) { weatherForcast in
            DispatchQueue.main.async{
                let todayForecast = weatherForcast.periods?.first
                let weatherCode = todayForecast?.getWeatherByCode()
                self.weatherImage.image = self.getImageForWeather(weatherCode: weatherCode!)
                self.maxTempLabel.text = "Max: \(todayForecast!.maxTempC)℃"
                self.minTempLabel.text = "Min: \(todayForecast!.minTempC)℃"
                
                self.forecast = weatherForcast.periods
                self.forecast?.remove(at: 0)
                self.forecastTableView.reloadData()
            }
        }
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if forecast != nil {
            return forecast!.count
        } else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "forecastItemCellidentifier", for: indexPath) as! InfoTableViewCell
        let weatherItem = forecast![indexPath.row]
        cell.dateLabel.text = getDate(timestamp: weatherItem.timestamp)
        cell.maxTempLabel.text = "\(weatherItem.maxTempC)℃"
        cell.minTempLabel.text = "\(weatherItem.minTempC)℃"
        let weatherCode = weatherItem.getWeatherByCode()
        cell.weatherIcon.image = getImageForWeather(weatherCode: weatherCode)
        return cell
    }
    
    func getImageForWeather(weatherCode: WeatherCode) -> UIImage? {
        switch weatherCode {
           case .cloudly:
               return UIImage(named: "Cloudly")
           case .partialyCloudly:
               return UIImage(named: "PartialyCloudly")
           case .rain:
               return UIImage(named: "Rain")
           case .sun:
               return UIImage(named: "Sun")
           case .snow:
               return UIImage(named: "Snow")
           case .thunderstorm:
               return UIImage(named: "Thunderstorm")
        }
    }
    
    
    func getDate(timestamp: Double) -> String{
        let date = Date(timeIntervalSince1970: timestamp)
        let dateFormatter = DateFormatter()
        dateFormatter.locale = NSLocale.current
        dateFormatter.dateFormat = "dd MMM yyyy"
        return dateFormatter.string(from: date)
    }
}
