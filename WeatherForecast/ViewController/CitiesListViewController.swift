//
//  CitiesListViewController.swift
//  WeatherForecast
//
//  Created by Katarina Tomic on 11/5/19.
//  Copyright © 2019 Katarina Tomic. All rights reserved.
//

import UIKit

class CitiesListViewController: UITableViewController {

    var cities:[City] = [City]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cityCellidentifier", for: indexPath) as! CityTableViewCell

        let city = cities[indexPath.row]
        cell.cityNameLabel.text = city.place.name
        cell.temperatureLabel.text = city.place.region

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedCity = cities[indexPath.row]
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "WeatherDetailsId") as! WeatherDetailsViewController
        vc.city = selectedCity
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
