  //
  //  ContentView.swift
  //  UnderstandingObservables
  //
  //  Created by Yasmin Cropanisi on 04/06/20.
  //  Copyright © 2020 Yasmin Cropanisi. All rights reserved.
  //
  
  import SwiftUI
  
  struct ContentView: View {
    
    @ObservedObject var weatherViewModel: WeatherViewModel
    
    init() {
      weatherViewModel = WeatherViewModel()
    }
    
    var body: some View {
      VStack(alignment: .center) {
        TextField("Enter city name", text: $weatherViewModel.cityName) {
          self.weatherViewModel.search()
        }.font(.custom("Arial", size: 40))
          .padding()
          .fixedSize()
        
        Text(self.weatherViewModel.temperature)
          .font(.custom("Arial", size: 100))
          .foregroundColor(Color.white)
         // .offset(y: 100)
          .padding()
      }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(Color.blue)
        .edgesIgnoringSafeArea(.all)
    }
  }
  
  struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      ContentView()
    }
  }
