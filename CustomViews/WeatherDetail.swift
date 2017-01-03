//
//  WeatherDetail.swift
//  CustomViews
//
//  Created by Jim Campagno on 1/3/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import UIKit

class WeatherDetail: UIView {
    
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var tempLabel: UILabel!
    
    var weather: Weather! {
        didSet {
            dayLabel.text = weather.day.description
            tempLabel.text = weather.temperature.description
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
        
        Bundle.main.loadNibNamed("WeatherDetail", owner: self, options: nil)
        
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(contentView)
        
        contentView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        contentView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        contentView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        
    }
    
}
