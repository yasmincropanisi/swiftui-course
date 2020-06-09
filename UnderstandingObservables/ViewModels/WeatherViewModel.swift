//
//  WeatherViewModel.swift
//  UnderstandingObservables
//
//  Created by Yasmin Cropanisi on 05/06/20.
//  Copyright © 2020 Yasmin Cropanisi. All rights reserved.
//

import Foundation
import Combine

class WeatherViewModel: ObservableObject {
  
  private var weatherService: WeatherService
  @Published var weather = Weather()
  
  init() {
    self.weatherService = WeatherService()
  }
  
  var temperature: String {
    if let temp = weather.temp {
      return String(format: "%.0f", temp)
    } else {
      return " "
    }
  }
  
  var humidity: String {
    if let humidity = weather.humidity {
      return String(format: "%.0f", humidity)
    } else {
      return ""
    }
  }
  
  var cityName: String = ""
  
  func search() {
    if let city = self.cityName.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) {
      fetchWeather(by: city)
    }
  }
  
  private func fetchWeather(by city: String) {
    weatherService.getWeather(ofCity: city) { weather in
      if let weather = weather {
        DispatchQueue.main.async {
          self.weather = weather
        }
        
      }
    }
  }
  
  
  func compareTriplets(a: [Int], b: [Int]) -> [Int] {
      var result = [0,0]
      
      for item in a.enumerated() {
          if item.element > b[item.offset] {
              result[0] += 1
          } else if item.element < b[item.offset] {
              result[1] += 1
          }
      }
      return result
  }
}
