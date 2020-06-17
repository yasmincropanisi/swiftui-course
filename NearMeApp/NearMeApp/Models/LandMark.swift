//
//  LandMark.swift
//  NearMeApp
//
//  Created by Yasmin Cropanisi on 17/06/20.
//  Copyright © 2020 Yasmin Cropanisi. All rights reserved.
//

import Foundation
import MapKit

struct Landmark {
  let placemark: MKPlacemark
  
  var id: UUID {
    return UUID()
  }
  
  var name: String {
   return self.placemark.name ?? ""
  }
  
  var title: String {
    return self.placemark.title ?? ""
  }
  
  var coordinate: CLLocationCoordinate2D {
    self.placemark.coordinate
  }
}
