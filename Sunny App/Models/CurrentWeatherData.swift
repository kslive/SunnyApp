//
//  CurrentWeatherData.swift
//  Sunny App
//
//  Created by Eugene Kiselev on 18.08.2020.
//  Copyright © 2020 Eugene Kiselev. All rights reserved.
//

import Foundation

struct CurrentWeatherData: Codable {
    
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Codable {
    
    let temp: Double
    let feels_like: Double
}

struct Weather: Codable {
    
    let id: Int
}
