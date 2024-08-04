//
//  insetGalleryView.swift
//  Torsx
//
//  Created by Avi Maslow on 8/4/24.
//
import SwiftUI

struct insetGalleryView: View {
    var location: TorsXLocation
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 15) {
                ForEach(location.createSquareImages(), id: \.self) { image in
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(12)
                }
            }
        }
    }
}

struct InsetGalleryView_Previews: PreviewProvider {
    static var previews: some View {
        insetGalleryView(location: TorsXLocation(record: MockData.location))
    }
}
