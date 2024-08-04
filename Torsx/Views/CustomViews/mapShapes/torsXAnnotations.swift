//
//  torsXAnnotations.swift
//  Torsx
//
//  Created by Avi Maslow on 8/5/24.
//

import SwiftUI

struct torsXAnnotations: View {
    var location: TorsXLocation
    var body: some View {
        VStack {
            ZStack {
                mapCircle()
                    .fill(Color.brandPrimary.gradient)
                    .frame(width: 100,height: 70)
                   // .foregroundColor(.brandPrimary)
                
                Image(uiImage: location.createFirstSquareImage())
                    .resizable()
                    .frame(width: 45, height: 45)
                    .clipShape(Circle())
                    .offset(y: -10)
                
                Text("\(location.price)")
                                  .font(.system(size: 11, weight: .bold))
                                  .padding(4)
                                  .background(Color.white)
                                  .clipShape(Capsule())
                                  .offset(x: 20, y: -27)
                          
            }
       
            Text(location.name)
                .font(.caption)
                .fontWeight(.semibold)
            
            
        }
    }
}

#Preview {
    torsXAnnotations(location: TorsXLocation(record: MockData.location))
}
