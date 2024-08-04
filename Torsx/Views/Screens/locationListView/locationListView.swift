//
//  AppTabView.swift
//  Torsx
//
//  Created by Avi Maslow on 8/4/24.
//
import SwiftUI

struct LocationListView: View {
    @EnvironmentObject private var locationManager: locationManager
    @State private var minPrice: String = ""
    @State private var maxPrice: String = ""
    @State private var minBeds: String = ""
    @State private var maxBeds: String = ""
    
    var allLocations: [TorsXLocation] {
        return locationManager.locations  // Get all locations
    }
    
    var filteredLocations: [TorsXLocation] {
        let minPriceValue = Int(minPrice) ?? 0
        let maxPriceValue = Int(maxPrice) ?? Int.max
        let minBedsValue = Int(minBeds) ?? 0
        let maxBedsValue = Int(maxBeds) ?? Int.max
        
        return locationManager.locations.filter { location in
            location.price >= minPriceValue &&
            location.price <= maxPriceValue &&
            location.rooms >= minBedsValue &&
            location.rooms <= maxBedsValue
        }
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                InsetGalleryViewList(locations: allLocations)
                
                VStack(spacing: 8) {
                    HStack {
                        TextField("Min Price", text: $minPrice)
                            .keyboardType(.numberPad)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.horizontal, 8)
                            .frame(maxWidth: .infinity)
                        
                        TextField("Max Price", text: $maxPrice)
                            .keyboardType(.numberPad)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.horizontal, 8)
                            .frame(maxWidth: .infinity)
                    }
                    
                    HStack {
                        TextField("Min Beds", text: $minBeds)
                            .keyboardType(.numberPad)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.horizontal, 8)
                            .frame(maxWidth: .infinity)
                        
                        TextField("Max Beds", text: $maxBeds)
                            .keyboardType(.numberPad)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.horizontal, 8)
                            .frame(maxWidth: .infinity)
                    }
                }
                .padding(.horizontal, 16)
                
                Spacer()
                
                List {
                    ForEach(filteredLocations) { location in
                        NavigationLink(value: location) {
                            locationCell(location: location)
                        }
                    }
                }
                .listStyle(PlainListStyle())
            }
            .navigationTitle("Apartments for Rent")
            .font(.custom("PTSans-Regular", size: 20))
            //.foregroundColor(.brandPrimary)
            .toolbar {
                Button {
                    dismissKeyboard()
                } label: {
                    Image(systemName: "keyboard.chevron.compact.down.fill")
                }
            }
            .navigationDestination(for: TorsXLocation.self) { location in
                LocationDetailView(viewModel: locationDetailViewModel(location: location))
            }
        }
    }
}

struct LocationListView_Previews: PreviewProvider {
    static var previews: some View {
        LocationListView()
            .environmentObject(locationManager())  // Provide an instance of LocationManager
    }
}
