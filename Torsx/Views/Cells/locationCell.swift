//
//  locationCell.swift
//  Torsx
//
//  Created by Avi Maslow on 8/4/24.
//

import SwiftUI

struct locationCell: View {
    var location: TorsXLocation
    
    var body: some View {
        HStack {
            Image(uiImage: location.createFirstSquareImage())
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .clipShape(Circle())
                .padding(.vertical, 7)
            
            VStack(alignment: .leading) {
                Text(location.name)
                    .font(.custom("PTSans-Regular", size: 20))
                    .fontWeight(.semibold)
                    .lineLimit(1)
                    .minimumScaleFactor(0.75)
                Text("$\(location.price)")
                   // .font(.custom("PTSans-Regular", size: 20))
                    .font(.subheadline)
            }
        }
    }
}

struct Location: Identifiable {
    var id = UUID()
    var name: String
    var price: Int
}



#Preview {
    locationCell(location: TorsXLocation(record: MockData.location))
}
