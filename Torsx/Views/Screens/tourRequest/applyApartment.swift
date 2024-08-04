//
//  applyApartment.swift
//  Torsx
//
//  Created by Avi Maslow on 8/6/24.
//

import SwiftUI
import MessageUI

struct TourRequestFormView: View {
    @State private var apartmentAddress: String = ""
    @State private var tourDate: Date = Date()
    @State private var fullName: String = ""
    @State private var cellNumber: String = ""
    @State private var combinedIncome: String = ""
    @State private var guarantorsIncome: String = ""
    @State private var minBedrooms: String = ""
    @State private var isShowingMailView = false
    @State private var isMailViewPresented = false
    
    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Tour Information")) {
                    TextField("Apartment Address", text: $apartmentAddress)
                    DatePicker("Schedule a Time and Date to Tour", selection: $tourDate, displayedComponents: .date)
                }
                
                Section(header: Text("Contact Information")) {
                    TextField("Full Name", text: $fullName)
                    TextField("Cell Number", text: $cellNumber)
                        .keyboardType(.phonePad)
                }
                
                Section(header: Text("Income Information")) {
                    TextField("Combined Income for Tenants", text: $combinedIncome)
                        .keyboardType(.numberPad)
                    TextField("Guarantors Income", text: $guarantorsIncome)
                        .keyboardType(.numberPad)
                }
                
                Section(header: Text("Apartment Preferences")) {
                    TextField("Minimum Amount of Bedrooms Needed", text: $minBedrooms)
                        .keyboardType(.numberPad)
                }
                
                Section {
                    Button("Send Request") {
                        isShowingMailView.toggle()
                    }
                }
            }
            .navigationTitle("Tour Request Form")
            .font(.custom("PTSans-Regular", size: 18))
            .toolbar{
                Button {
                    dismissKeyboard()
                }label: {
                    Image(systemName: "keyboard.chevron.compact.down.fill")
                }
            }
            .sheet(isPresented: $isShowingMailView) {
                MailView(isPresented: $isShowingMailView, apartmentAddress: apartmentAddress, 
                         tourDate: tourDate, fullName: fullName, cellNumber: cellNumber,
                         combinedIncome: combinedIncome, guarantorsIncome: guarantorsIncome,
                         minBedrooms: minBedrooms)
            }
        }
    }
}

struct TourRequestFormView_Previews: PreviewProvider {
    static var previews: some View {
        TourRequestFormView()
    }
}
