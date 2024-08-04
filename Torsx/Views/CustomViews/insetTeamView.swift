//
//  insetTeamView.swift
//  Torsx
//
//  Created by Avi Maslow on 8/10/24.
//
import SwiftUI

struct Agent {
    let name: String
    let jobTitle: String
    let phoneNumber: String
    let linkedinURL: String
}

struct intsetTeamView: View {
    // Define the agents as an array of Agent structs
    private let agents: [Agent] = [
        Agent(name: "Ilan Maslow", jobTitle: "Senior Real Estate Agent/ CEO", phoneNumber: "+1 234-567-8901", linkedinURL: "https://www.linkedin.com/in/johndoe"),
        Agent(name: "Jane Smith", jobTitle: "Property Consultant", phoneNumber: "+1 234-567-8902", linkedinURL: "https://www.linkedin.com/in/janesmith"),
        Agent(name: "Michael Johnson", jobTitle: "Real Estate Advisor", phoneNumber: "+1 234-567-8903", linkedinURL: "https://www.linkedin.com/in/michaeljohnson"),
        Agent(name: "Emily Davis", jobTitle: "Client Relations Manager", phoneNumber: "+1 234-567-8904", linkedinURL: "https://www.linkedin.com/in/emilydavis"),
        Agent(name: "David Brown", jobTitle: "Sales Director", phoneNumber: "+1 234-567-8905", linkedinURL: "https://www.linkedin.com/in/davidbrown"),
        Agent(name: "Sophia Wilson", jobTitle: "Leasing Specialist", phoneNumber: "+1 234-567-8906", linkedinURL: "https://www.linkedin.com/in/sophiawilson"),
        Agent(name: "James Taylor", jobTitle: "Real Estate Broker", phoneNumber: "+1 234-567-8907", linkedinURL: "https://www.linkedin.com/in/jamestaylor")
    ]
    
    var body: some View {
        GroupBox {
            TabView {
                // Use ForEach to iterate over the agents array
                ForEach(agents, id: \.name) { agent in
                    VStack(alignment: .center, spacing: 10) {
                        Image("agentDefault")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                            .clipShape(Circle()) // Making the image circular
                            .overlay(Circle().stroke(Color.brandPrimary, lineWidth: 2)) // Adding a border
                        
                        VStack(alignment: .leading, spacing: 10) {
                            Text(agent.name)
                                .font(.custom("PlayfairDisplay-Bold", size: 18))
                                .foregroundColor(.brandPrimary)
                            
                            Text(agent.jobTitle)
                                .font(.custom("PTSans-Regular", size: 16))
                                .foregroundColor(.brandPrimary)
                            
                            HStack {
                                Image(systemName: "phone.fill")
                                    .foregroundColor(.brandPrimary)
                                Button(action: {
                                    if let url = URL(string: "tel:\(agent.phoneNumber.replacingOccurrences(of: " ", with: ""))") {
                                        UIApplication.shared.open(url)
                                    }
                                }) {
                                    Text(agent.phoneNumber)
                                        .font(.custom("PTSans-Regular", size: 16))
                                        .foregroundColor(.brandPrimary)
                                }
                            }
                            
                            HStack {
                                Image(systemName: "link.circle.fill")
                                    .foregroundColor(.brandPrimary)
                                Link("LinkedIn", destination: URL(string: agent.linkedinURL)!)
                                    .font(.custom("PTSans-Regular", size: 16))
                                    .foregroundColor(.brandPrimary)
                            }
                        }
                        .padding(.top, 10)
                    }
                    .padding()
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 300, idealHeight: 350, maxHeight: 400)
        }
        .padding()
    }
}

#Preview {
    intsetTeamView()
}

