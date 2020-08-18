//
//  ViewController.swift
//  Sunny App
//
//  Created by Eugene Kiselev on 18.08.2020.
//  Copyright © 2020 Eugene Kiselev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weatherIconImageView: UIImageView!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var feelsLikeTemperatureLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func searchPressed(_ sender: UIButton) {
        
        self.presentSearchAlertController(withTitle: "Enter city name", message: nil, style: .alert)
    }
}

