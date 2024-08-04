//
//  aboutUs.swift
//  Torsx
//
//  Created by Avi Maslow on 8/10/24.
//

import SwiftUI

struct aboutUsView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                Text("About Us")
                    .font(.custom("PlayfairDisplay-Bold", size: 40))
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.brandPrimary)
                    //.background(
                    //    Color.yellow
                      //      .frame(height: 6)
                      //      .offset(y: 24)
                    //)
                Spacer()
                
                // About Us Blurb
                GroupBox {
                    Text("At Torsx, our mission is to redefine the real estate experience by setting a new standard of excellence. We stand out by seamlessly integrating exceptional service with innovative solutions, offering a unique blend of personalized attention and cutting-edge practices. Our commitment to holistic excellence drives us to deliver outstanding value in every aspect of our work, from creating exceptional living environments to optimizing real estate investments. By understanding the unique needs of each client and resident and staying ahead of market trends, we ensure tailored solutions that exceed expectations. At Torsx, we don’t just follow industry standards—we set them, fostering lasting relationships and providing transformative experiences that distinguish us in the real estate landscape")
                        .font(.custom("PTSans-Regular", size: 16))
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.brandPrimary)
                        .padding(.horizontal)
                }
                
                // Team Information
                Group {
                    HeadingView(headingImage: "person.3.fill", headingText: "Our Team")
                        .font(.custom("PlayfairDisplay-Bold", size: 18))
                       // .foregroundColor(.brandPrimary)
                    intsetTeamView() // Assuming insetTeamView is another custom view showing your team members
                }
                .padding(.horizontal)
            }
            .padding()
        }
    }
}

#Preview {
    aboutUsView()
}
