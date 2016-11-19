//
//  Forecast.swift
//  CustomViews
//
//  Created by James Campagno on 11/14/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


struct Forecast {
    
    var days: [Weather] = []
    
    
    init() {
        generateFakeForecast()
    }
    
}


// MARK: - Test Methods
extension Forecast {
    
    mutating func generateFakeForecast() {
        
        let monday = Weather(day: .monday, temperature: 80, isCloudy: true, isRaining: true)
        let tuesday = Weather(day: .tuesday, temperature: 85, isCloudy: true, isRaining: false)
        let wednesday = Weather(day: .wednesday, temperature: 75, isCloudy: false, isRaining: false)
        let thursday = Weather(day: .thursday, temperature: 79, isCloudy: false, isRaining: false)
        let friday = Weather(day: .friday, temperature: 88, isCloudy: true, isRaining: true)
        let saturday = Weather(day: .saturday, temperature: 90, isCloudy: false, isRaining: false)
        let sunday = Weather(day: .sunday, temperature: 85, isCloudy: false, isRaining: false)
        
        days = [monday, tuesday, wednesday, thursday, friday, saturday, sunday]
        
    }
    
}
