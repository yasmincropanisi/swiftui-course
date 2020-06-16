//
//  ImageDetectionManager.swift
//  CoreImageSwiftUIIntegration
//
//  Created by Yasmin Cropanisi on 16/06/20.
//  Copyright © 2020 Yasmin Cropanisi. All rights reserved.
//

import Foundation
import CoreML
import UIKit

class ImageDetectionManager {
  
  let model = Resnet50()
  
  func detect(_ img: UIImage) -> String? {
    guard let pixelBuffer = img.toCVPixelBuffer(),
      let prediciton = try? model.prediction(image: pixelBuffer) else { return nil }
    
    return prediciton.classLabel
    
  }
}
