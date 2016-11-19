//
//  WeatherCell.swift
//  CustomViews
//
//  Created by James Campagno on 11/14/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class WeatherCell: UITableViewCell {
    
    @IBOutlet weak var weatherView: WeatherView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    

}
