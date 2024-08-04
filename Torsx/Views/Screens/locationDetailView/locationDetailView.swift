//
//  locationDetailView.swift
//  Torsx
//
//  Created by Avi Maslow on 8/4/24.
//

import SwiftUI
import MessageUI

struct LocationDetailView: View {
    
    @ObservedObject var viewModel: locationDetailViewModel
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var phone: String = ""
    @State private var message: String = "I would like to schedule a tour."
    @State private var selectedDate: Date = Date()
    @State private var showingMailCompose = false
    @State private var mailComposeResult: Result<MFMailComposeResult, Error>? = nil
    
    var body: some View {
        VStack {
            BannerImageView(image: viewModel.location.createBannerImage())
            Spacer()
            ScrollView {
                HStack {
                    AddressView(address: viewModel.location.address)
                        .font(.custom("PTSans-Regular", size: 20))
                }
                
                HStack {
                    PriceView(price: viewModel.location.price)
                        .font(.custom("PTSans-Regular", size: 20))
                    Spacer()
                }
                .padding(.horizontal)
                HStack {
                    amountOfRoomsView(numRooms: viewModel.location.rooms)
                        .font(.custom("PTSans-Regular", size: 20))
                    Spacer()
                }
                .padding(.horizontal)
                HStack {
                    amountOfBathsView(numBathroom: viewModel.location.NumBathrooms)
                        .font(.custom("PTSans-Regular", size: 20))
                    Spacer()
                }
                .padding(.horizontal)
                Spacer()
                VStack {
                    Label("About this location", systemImage: "info.circle")
                        .font(.custom("PlayfairDisplay-Bold", size: 18))
                    descriptionView(description: viewModel.location.description)
                        .font(.custom("PTSans-Regular", size: 20))
                }
                
                HStack {
                    insetGalleryView(location: viewModel.location)
                }
                Label("Want to know more?", systemImage: "magnifyingglass.circle.fill")
                ZStack {
                    Capsule()
                        .frame(width: 270, height: 88)
                        .foregroundColor(.gray)
                    HStack {
                        Button {
                            viewModel.callAgent()
                        } label: {
                            locationActionButton(color: .brandPrimary, imageName: "phone.fill")
                        }
                        
                        Button {
                            viewModel.getDirectionsToLocations()
                        } label: {
                            locationActionButton(color: .brandPrimary, imageName: "location.fill")
                        }
                        
                        Link(destination: URL(string: viewModel.location.websiteUrl)!, label: {
                            locationActionButton(color: .brandPrimary, imageName: "network")
                        })
                    }
                    .padding()
                }
                
                // Contact Info Form
                VStack(alignment: .leading) {
                    Text("Your contact info")
                        .font(.headline)
                        .padding(.top)
                    
                    TextField("Name", text: $name)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    TextField("Email", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                    
                    TextField("Phone", text: $phone)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .keyboardType(.phonePad)
                    
                    TextField("Message", text: $message)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Text("Select a preferred date for tour (optional)")
                        .padding(.top)
                    
                    DatePicker("Preferred Date", selection: $selectedDate, displayedComponents: .date)
                        .datePickerStyle(GraphicalDatePickerStyle())
                        .padding(.bottom)
                    
                    Button(action: {
                        showingMailCompose = true
                    }) {
                        Text("Send tour request")
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.brandPrimary)
                            .cornerRadius(10)
                    }
                }
                .padding()
                
                Spacer()
            }
            Spacer()
        }
        .alert(item: $viewModel.alertItem, content: { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        })
        .navigationTitle(viewModel.location.name)
        .navigationBarTitleDisplayMode(.inline)
        .sheet(isPresented: $showingMailCompose) {
            MailComposeView(
                recipients: ["office@torsx.com"],
                subject: "Tour Request for \(viewModel.location.name)",
                body: composeMessageBody(),
                result: $mailComposeResult
            )
        }
    }
    
    private func composeMessageBody() -> String {
        """
        Name: \(name)
        Email: \(email)
        Phone: \(phone)
        Message: \(message)
        Preferred Date: \(selectedDate)
        
        Location Details:
        Name: \(viewModel.location.name)
        Address: \(viewModel.location.address)
        Price: \(viewModel.location.price)
        Rooms: \(viewModel.location.rooms)
        Bathrooms: \(viewModel.location.NumBathrooms)
        Description: \(viewModel.location.description)
        """
    }
}

struct LocationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LocationDetailView(viewModel: locationDetailViewModel(location: TorsXLocation(record: MockData.location)))
    }
}

// BannerImageView implementation
struct BannerImageView: View {
    var image: UIImage
    
    var body: some View {
        Image(uiImage: image)
            .resizable()
            .scaledToFill()
            .frame(maxHeight: 200)
            .clipped()
    }
}

// AddressView implementation
struct AddressView: View {
    var address: String
    var body: some View {
        HStack {
            Label(address, systemImage: "mappin.and.ellipse")
                .font(.title2)
                .foregroundColor(.accentColor)
            Spacer()
        }
        .padding(.horizontal)
    }
}

// PriceView implementation
struct PriceView: View {
    var price: Int
    var body: some View {
        Label("Price: $\(price)", systemImage: "dollarsign.circle")
            .font(.title2)
            .foregroundColor(.accentColor)
    }
}

// amountOfRoomsView implementation
struct amountOfRoomsView: View {
    var numRooms: Int
    var body: some View {
        Label("Amount of rooms: \(numRooms)", systemImage: "house.circle")
            .font(.title2)
            .foregroundColor(.accentColor)
    }
}

// amountOfBathsView implementation
struct amountOfBathsView: View {
    var numBathroom: Double
    var body: some View {
        Label("Amount of Bathrooms: \(numBathroom, specifier: "%.1f")", systemImage: "house.circle")
            .font(.title2)
            .foregroundColor(.accentColor)
    }
}

// descriptionView implementation
struct descriptionView: View {
    var description: String
    var body: some View {
        Text(description)
            .lineLimit(50)
            .minimumScaleFactor(0.60)
            .frame(height: 600)
            .padding(.horizontal)
    }
}

// locationActionButton implementation
struct locationActionButton: View {
    var color: Color
    var imageName: String
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.brandPrimary.gradient.shadow(.drop(color: .black.opacity(0.5), radius: 5, x: 2, y: 2)))
                .frame(width: 60, height: 60)
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.white.shadow(.drop(color: .black, radius: 0.2)))
                .frame(width: 22, height: 22)
        }
    }
}

// MailComposeView implementation
struct MailComposeView: UIViewControllerRepresentable {
    var recipients: [String]?
    var subject: String?
    var body: String?
    @Binding var result: Result<MFMailComposeResult, Error>?

    func makeUIViewController(context: Context) -> MFMailComposeViewController {
        let vc = MFMailComposeViewController()
        vc.setToRecipients(recipients)
        vc.setSubject(subject ?? "")
        vc.setMessageBody(body ?? "", isHTML: false)
        vc.mailComposeDelegate = context.coordinator
        return vc
    }

    func updateUIViewController(_ uiViewController: MFMailComposeViewController, context: Context) {}

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    class Coordinator: NSObject, MFMailComposeViewControllerDelegate {
        var parent: MailComposeView

        init(_ parent: MailComposeView) {
            self.parent = parent
        }

        func mailComposeController(
            _ controller: MFMailComposeViewController,
            didFinishWith result: MFMailComposeResult, error: Error?
        ) {
            defer { controller.dismiss(animated: true) }
            if let error = error {
                parent.result = .failure(error)
            } else {
                parent.result = .success(result)
            }
        }
    }
}
