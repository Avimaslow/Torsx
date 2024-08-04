//
//  intsetFactView.swift
//  Torsx
//
//  Created by Avi Maslow on 8/6/24.
//

import SwiftUI

struct intsetFactView: View {
    // Define the facts as an array of strings
    private let facts: [String] = [
        "Enter TorsX \nReal estate should simplify your path to finding the perfect home, not complicate it.",
        "Our platform is designed to bring you closer to your dream home with minimal effort and maximum efficiency.",
        "We believe in transparency and reliability, ensuring that you have all the information you need to make informed decisions.",
        "Experience a seamless real estate process with our user-friendly interface and dedicated support team ready to assist you.",
        "Your journey to finding the perfect property starts with us, where every detail matters and every search is personalized."
    ]
    
    var body: some View {
        GroupBox {
            TabView {
                // Use ForEach to iterate over the facts array
                ForEach(facts, id: \.self) { fact in
                    Text(fact)
                        .font(.custom("PTSans-Regular", size: 16))
                        .padding()
                        .foregroundColor(.brandPrimary) // Apply brandPrimary color
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        }
    }
}

#Preview {
    intsetFactView()
}
