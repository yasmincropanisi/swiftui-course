//
//  MusicPlayerView.swift
//  IntroNeumorphicDesign
//
//  Created by Yasmin Cropanisi on 17/06/20.
//  Copyright © 2020 Yasmin Cropanisi. All rights reserved.
//

import SwiftUI

struct MusicPlayerView: View {
  @State private var sliderValue: CGFloat = 0
  var body: some View {
    VStack {
      
      HStack {
        NeumorphicImageButton(systemName: "arrow.left", size: CGSize(width: 20, height: 20)) {
          
        }.foregroundColor(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
        Spacer()
        Text("Playing now")
        Spacer()
        NeumorphicImageButton(systemName: "line.horizontal.3", size: CGSize(width: 20, height: 20)) {
                
              }.foregroundColor(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))

        
      }.padding()
      
      Spacer()
      
      ZStack {
        Image("music")
          .resizable()
          .frame(width: 300, height: 300)
          .clipShape(Circle())
          .padding()
          .shadow(color: Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)), radius: 8, x: 9, y: 9)
          .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 9, x: -9, y: -9)
      }.clipShape(Circle().inset(by: 6))
        .shadow(color: Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)), radius: 10, x: 9, y: 9)
        .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 10, x: -9, y: -9)
      Spacer()
      
      Slider(value: self.$sliderValue, in: 0...1, step: 0.1)
      
      HStack {
        NeumorphicImageButton(systemName: "backward.fill", size: CGSize(width: 25, height: 25)) {
                 
               }.foregroundColor(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
        Spacer()
        NeumorphicImageButton(systemName: "stop.fill", size: CGSize(width: 25, height: 25)) {
                 
               }.foregroundColor(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
               Spacer()
        NeumorphicImageButton(systemName: "forward.fill", size: CGSize(width: 25, height: 25)) {
                 
               }.foregroundColor(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
      }
    }
  }
}

struct MusicPlayerView_Previews: PreviewProvider {
  static var previews: some View {
    MusicPlayerView()
  }
}
