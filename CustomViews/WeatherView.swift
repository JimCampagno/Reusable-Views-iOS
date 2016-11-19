//
//  WeatherView.swift
//  CustomViews
//
//  Created by James Campagno on 11/14/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class WeatherView: UIView {

    @IBOutlet var contentView: UIView!
    
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var isCloudyLabel: UILabel!
    @IBOutlet weak var isRainingLabel: UILabel!
    
    var weather: Weather! {
        
        didSet {
            
            print("About to setup \(weather.day)")
            
            dayLabel.text = "\(weather.day)"
            
            tempLabel.text = String(weather.temperature)
            
            isCloudyLabel.text = weather.isCloudy ? "☁️☁️☁️" : "☀️☀️☀️"
            
            isRainingLabel.text = weather.isRaining ? "⛈" : nil
            
        }
        
    }
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func commonInit() {
        
        Bundle.main.loadNibNamed("WeatherView", owner: self, options: nil)
        
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(contentView)
        
        contentView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        contentView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        contentView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        
    }
    
    

}
