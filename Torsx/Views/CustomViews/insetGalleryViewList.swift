//
//  insetGalleryViewList.swift
//  Torsx
//
//  Created by Avi Maslow on 8/5/24.
//
import SwiftUI

struct InsetGalleryViewList: View {
    var locations: [TorsXLocation]  // Accept a list of locations
    @State private var selectedIndex = 0
    @State private var isShowingDetailView = false
    @State private var selectedLocation: TorsXLocation? = nil
    @EnvironmentObject private var locationManager: locationManager
    
    let timer = Timer.publish(every: 4, on: .main, in: .common).autoconnect()

    var body: some View {
        TabView(selection: $selectedIndex) {
            ForEach(locations.filter { $0.price > 10000 }.indices, id: \.self) { index in
                let location = locations.filter { $0.price > 10000 }[index]
                if let firstImage = location.createSquareImages().first {
                    Image(uiImage: firstImage)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(12)
                        .tag(index)
                        .onTapGesture {
                            selectedLocation = location
                            isShowingDetailView = true
                        }
                } else {
                    Image("defaultSquare")  // Fallback image
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(12)
                        .tag(index)
                        .onTapGesture {
                            selectedLocation = location
                            isShowingDetailView = true
                        }
                }
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .onReceive(timer) { _ in
            withAnimation {
                let filteredLocations = locations.filter { $0.price > 10000 }
                if !filteredLocations.isEmpty {
                    selectedIndex = (selectedIndex + 1) % filteredLocations.count
                }
            }
        }
        .sheet(isPresented: $isShowingDetailView) {
            if let location = selectedLocation {
                NavigationView {
                    LocationDetailView(viewModel: locationDetailViewModel(location: location))
                        .toolbar {
                            ToolbarItem(placement: .navigationBarLeading) {
                                Button("Dismiss") {
                                    isShowingDetailView = false
                                }
                            }
                        }
                }
                .accentColor(.brandPrimary)
            }
        }
    }
}

struct InsetGalleryViewList_Previews: PreviewProvider {
    static var previews: some View {
        InsetGalleryViewList(locations: [TorsXLocation(record: MockData.location)])  // Provide mock data
    }
}


