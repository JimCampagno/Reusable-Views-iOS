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
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedWeather = forecast.days[indexPath.row]
        performSegue(withIdentifier: "DetailSegue", sender: selectedWeather)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let selectedWeather = sender as! Weather
        
        let destVC = segue.destination as! DetailWeatherViewController
        
        destVC.weather = selectedWeather
        
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


