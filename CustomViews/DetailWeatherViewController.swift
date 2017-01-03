//
//  DetailWeatherViewController.swift
//  CustomViews
//
//  Created by Jim Campagno on 1/3/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import UIKit

class DetailWeatherViewController: UIViewController {
    
    @IBOutlet weak var weatherDetailView: WeatherDetail!
    var weather: Weather!
    var dismissButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        weatherDetailView.weather = weather
        
        dismissButton = UIButton(type: .system)

        dismissButton.addTarget(self, action: #selector(dismissTheView), for: .touchUpInside)
        dismissButton.backgroundColor = UIColor.clear
        dismissButton.translatesAutoresizingMaskIntoConstraints = false
        view.insertSubview(dismissButton, belowSubview: weatherDetailView)
        dismissButton.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        dismissButton.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        dismissButton.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        dismissButton.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
    }
    
    func dismissTheView() {
        dismiss(animated: true, completion: nil)
    }

   

}
