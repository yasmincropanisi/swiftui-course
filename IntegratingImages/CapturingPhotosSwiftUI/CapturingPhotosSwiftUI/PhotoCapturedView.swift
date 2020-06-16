//
//  PhotoCapturedView.swift
//  CapturingPhotosSwiftUI
//
//  Created by Yasmin Cropanisi on 16/06/20.
//  Copyright © 2020 Yasmin Cropanisi. All rights reserved.
//

import SwiftUI

struct PhotoCapturedView: View {
  
  @Binding var showImagePicker: Bool
  @Binding var image: Image?
  
  
  var body: some View {
    ImagePicker(isShown: $showImagePicker, image: $image)
  }
}


