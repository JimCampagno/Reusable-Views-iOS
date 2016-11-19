//
//  Weather.swift
//  CustomViews
//
//  Created by James Campagno on 11/14/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

typealias Temperature = Double

struct Weather {
    
    let day: Day
    let temperature: Temperature
    var isCloudy: Bool
    var isRaining: Bool
    
}


enum Day: CustomStringConvertible {
    
    case monday, tuesday, wednesday, thursday, friday, saturday, sunday
    
    var description: String {
        
        switch self {
            
        case .monday: return "Monday"
        case .tuesday: return "Tuesday"
        case .wednesday: return "Wednesday"
        case .thursday: return "Thursday"
        case .friday: return "Friday"
        case .saturday: return "Saturday"
        case .sunday: return "Sunday"
            
        }
        
    }
    
}

