//
//  WeatherService.swift
//  UnderstandingObservables
//
//  Created by Yasmin Cropanisi on 05/06/20.
//  Copyright © 2020 Yasmin Cropanisi. All rights reserved.
//

import Foundation

class WeatherService {
  func getWeather(ofCity city: String, completion: @escaping (Weather?) -> ()) {
    guard let url = URL(string: "http://api.openweathermap.org/data/2.5/weather?q=\(city)&appid=3b92416f1fe824e4765734019fb1c446&units=imperial") else {
      completion(nil)
      return
    }
    URLSession.shared.dataTask(with: url) { data, response, error in
      guard let data = data, error == nil else {
        completion(nil)
        return
      }
      let weatherResponse = try? JSONDecoder().decode(WeatherResponse.self, from: data)
      if let weatherResponse = weatherResponse {
        let weather = weatherResponse.main
        completion(weather)
      } else {
        completion(nil)
      }
    }.resume()
  }
}
