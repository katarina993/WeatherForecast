//
//  SplashViewController.swift
//  WeatherForecast
//
//  Created by Katarina Tomic on 11/3/19.
//  Copyright © 2019 Katarina Tomic. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
            DataController.shared.initialLoad { (cities) in
                DispatchQueue.main.async {
                    sleep(2)
                    self.navigateToWeatherListScreen(cities: cities)
                }
            }
    }

    func navigateToWeatherListScreen(cities: [City]) {
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let mainVC = mainStoryboard.instantiateInitialViewController() as! UINavigationController
        let citiesListVC = mainVC.topViewController as! CitiesListViewController
        citiesListVC.cities = cities
      
        if let window = UIApplication.shared.keyWindow {
            window.rootViewController = mainVC
        }
    }

}
