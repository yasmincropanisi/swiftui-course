//
//  NewsArticleView.swift
//  StocksApp
//
//  Created by Yasmin Cropanisi on 16/06/20.
//  Copyright © 2020 Yasmin Cropanisi. All rights reserved.
//

import SwiftUI

struct NewsArticleView: View {
  
  var newsArticles: [NewsArticleViewModel] = [NewsArticleViewModel]()
  let onDragBegin : (DragGesture.Value) -> Void
  let onDragEnd: (DragGesture.Value) -> Void
  
  
  var body: some View {
    let screenSize = UIScreen.main.bounds.size
    
    return VStack(alignment: .leading) {
      HStack {
        VStack(alignment: .leading) {
          Text("Top News")
            .font(.largeTitle)
            .foregroundColor(Color.white)
            .fontWeight(.bold)
            .padding(2)
          
          Text("From News")
            .font(.body)
            .foregroundColor(Color.gray)
            .fontWeight(.bold)
            .padding(2)
        }
        Spacer()
      }.padding().contentShape(Rectangle())
      .gesture(DragGesture()
      .onChanged(self.onDragBegin)
      .onEnded(self.onDragEnd))
      
      
      ScrollView {
        VStack {
          ForEach(self.newsArticles, id: \.title) { article in
            HStack {
              VStack(alignment: .leading) {
                Text(article.publication)
                  .foregroundColor(Color.white)
                  .font(.custom("Arial", size: 22))
                  .fontWeight(.bold)
                
                Text(article.title)
                  .foregroundColor(Color.white)
                  .font(.custom("Arial", size: 22))
                
              }
              Spacer()
            }
          }
        }.frame(maxWidth: .infinity)
      }
      
      
    }.frame(width: screenSize.width, height: screenSize.height)
      .background(Color(red: 27/255, green: 28/255, blue: 30/255))
      .cornerRadius(20)
  }
}
