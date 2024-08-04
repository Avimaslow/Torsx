//
//  coverImageView.swift
//  Torsx
//
//  Created by Avi Maslow on 8/4/24.
//

import SwiftUI

struct coverImageView: View {
    var body: some View {
        TabView{
            ForEach(0..<10) { item in
                Image("defaultBanner")
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

#Preview {
    coverImageView()
}
