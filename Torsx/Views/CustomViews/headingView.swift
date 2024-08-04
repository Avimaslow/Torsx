//
//  headingView.swift
//  Torsx
//
//  Created by Avi Maslow on 8/6/24.
//
import SwiftUI

struct HeadingView: View {
  // MARK: - PROPERTIES
  
  var headingImage: String
  var headingText: String
  var font: Font = .title3 // Default value

  // MARK: - BODY

  var body: some View {
    HStack {
      Image(systemName: headingImage)
        .foregroundColor(.accentColor)
        .imageScale(.large)
      
      Text(headingText)
        .font(font)
        .fontWeight(.bold)
    }
    .padding(.vertical)
  }
}

// MARK: - PREVIEW

struct HeadingView_Previews: PreviewProvider {
  static var previews: some View {
    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
