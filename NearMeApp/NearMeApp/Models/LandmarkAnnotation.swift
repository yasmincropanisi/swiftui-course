//
//  LandmarkAnnotation.swift
//  NearMeApp
//
//  Created by Yasmin Cropanisi on 17/06/20.
//  Copyright © 2020 Yasmin Cropanisi. All rights reserved.
//

import Foundation
import MapKit

final class LandmarkAnnotation: NSObject, MKAnnotation {
  
  let title: String?
  let coordinate: CLLocationCoordinate2D
  
  init(landmark: Landmark) {
    self.title = landmark.name
    self.coordinate = landmark.coordinate
  }
}
