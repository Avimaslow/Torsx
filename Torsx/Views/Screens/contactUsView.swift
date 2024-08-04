//
//  contactUsView.swift
//  Torsx
//
//  Created by Avi Maslow on 8/4/24.
//
import SwiftUI

struct contactUsView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                // Move Contact Us text to the top of the page
                Text("Contact Us")
                    .font(.custom("PlayfairDisplay-Bold", size: 40))
                    .foregroundColor(.brandPrimary)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.top, 20) // Add some top padding
                Spacer()
                Image("coverImage")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 350)
                
                // Contact Information
                GroupBox {
                    VStack(alignment: .leading) {
                        Text("Email: office@torsx.com")
                        Text("Phone: +1 516-916-7655")
                    }
                    .font(.custom("PTSans-Regular", size: 16))
                    .foregroundColor(.brandPrimary)
                    .padding(.horizontal)
                }
                
                // Headquarters Information
                Group {
                    HeadingView(headingImage: "globe", headingText: "Our Headquarters")
                        .font(.custom("PlayfairDisplay-Bold", size: 18))
                    insetMapView()
                }
                .padding(.horizontal)
                
                // Contact Form
                Group {
                    HeadingView(headingImage: "envelope.fill", headingText: "Contact Form")
                        .font(.custom("PlayfairDisplay-Bold", size: 18))
                    
                    Button(action: {
                        let email = "office@torsx.com"
                        if let url = URL(string: "mailto:\(email)") {
                            UIApplication.shared.open(url)
                        }
                    }) {
                        Text("Send Us an Email")
                            .font(.custom("PlayfairDisplay-Bold", size: 18))
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.brandPrimary) // Set button background to brandPrimary
                            .cornerRadius(10)
                    }
                }
                .padding(.horizontal)
                
                // Social Media and Messaging Links
                VStack(spacing: 20) {
                    VStack {
                        Link(destination: URL(string: "https://www.linkedin.com")!) {
                            Image("linkedinImage")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .foregroundColor(.brandPrimary) // Set icon color to brandPrimary
                        }
                        Text("LinkedIn")
                            .font(.custom("PlayfairDisplay-Bold", size: 18))
                            .foregroundColor(.brandPrimary) // Set text color to brandPrimary
                    }
                    
                    VStack {
                        Link(destination: URL(string: "https://wa.me/19293311228")!) {
                            Image("whatsAppLogo")
                                .resizable()
                                .frame(width: 55, height: 55)
                                .foregroundColor(.brandPrimary) // Set icon color to brandPrimary
                        }
                        Text("WhatsApp")
                            .font(.custom("PlayfairDisplay-Bold", size: 18))
                            .foregroundColor(.brandPrimary) // Set text color to brandPrimary
                    }
                    
                    VStack {
                        Link(destination: URL(string: "sms:+19293311228")!) {
                            Image("imessage")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .foregroundColor(.brandPrimary) // Set icon color to brandPrimary
                        }
                        Text("iMessage")
                            .font(.custom("PlayfairDisplay-Bold", size: 18))
                            .foregroundColor(.brandPrimary) // Set text color to brandPrimary
                    }
                }
                .padding(.top, 20)
            }
            .padding()
        }
    }
}

#Preview {
    contactUsView()
}
