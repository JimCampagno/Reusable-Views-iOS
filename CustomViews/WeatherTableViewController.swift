//
//  WeatherTableViewController.swift
//  CustomViews
//
//  Created by James Campagno on 11/14/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class WeatherTableViewController: UITableViewController {
    
    var forecast = Forecast()

    override func viewDidLoad() {
        
        super.viewDidLoad()

       
        
    }

}

// MARK: - UITableView DataSource
extension WeatherTableViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return forecast.days.count
        
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "WeatherCell", for: indexPath) as! WeatherCell
        
        let currentWeather = forecast.days[indexPath.row]
        
        print("About to setup a weatherview with \(currentWeather.day)")
        
        cell.weatherView.weather = currentWeather
        
        return cell
    }
    
}


