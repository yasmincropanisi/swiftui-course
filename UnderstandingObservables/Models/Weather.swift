//
//  Weather.swift
//  UnderstandingObservables
//
//  Created by Yasmin Cropanisi on 05/06/20.
//  Copyright © 2020 Yasmin Cropanisi. All rights reserved.
//

import Foundation

struct WeatherResponse: Decodable {
  let main: Weather
}

struct Weather: Decodable {
  var temp: Double?
  var humidity: Double?
  
}
