//
//  locationMapView.swift
//  Torsx
//
//  Created by Avi Maslow on 8/4/24.
import CoreLocationUI
import SwiftUI
import MapKit

struct locationMapView: View {
    @EnvironmentObject private var locationManager: locationManager
    @StateObject private var viewModel = locationMapViewModel()
        
    var body: some View {
        ZStack {
            Map(initialPosition: viewModel.cameraPosition) {
                ForEach(locationManager.locations) { location in
                    Annotation(location.name, coordinate: location.location.coordinate) {
                        torsXAnnotations(location: location)
                            .onTapGesture {
                                locationManager.selectedLocation = location
                                viewModel.isShowingDetailView = true
                            }
                            .contextMenu {
                                Button("Look Around", systemImage: "eyes") {
                                    viewModel.getLookAroundScene(for: location)
                                }
                                Button("Get Directions", systemImage: "arrow.triangle.turn.up.right.circle") {
                                    viewModel.getDirections(to: location)
                                }
                            }
                    }
                    .annotationTitles(.hidden)
                }
                UserAnnotation()
                if let route = viewModel.route {
                    MapPolyline(route)
                        .stroke(.brandPrimary, lineWidth: 7)
                }
            }
            .lookAroundViewer(isPresented: $viewModel.isShowingLookAround, initialScene: viewModel.lookAroundScene)
            .mapStyle(.imagery(elevation: .realistic))
            .mapControls {
                MapCompass()
                MapUserLocationButton()
                MapPitchToggle()
                MapScaleView()
            }
            
            VStack {
                logoView()
                    .shadow(radius: 10)
                
                Spacer()
            }
            
            if viewModel.isLoading {
                VStack {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle())
                        .scaleEffect(5)
                        .tint(.brandPrimary)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.black.opacity(0.3))
                .ignoresSafeArea()
            }
        }
        .sheet(isPresented: $viewModel.isShowingDetailView) {
            NavigationView {
                LocationDetailView(viewModel: locationDetailViewModel(location: locationManager.selectedLocation!))
                    .toolbar {
                        Button("Dismiss", action: { viewModel.isShowingDetailView = false })
                    }
            }
            .accentColor(.brandPrimary)
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        }
        .onAppear {
      
            if locationManager.locations.isEmpty {
                           viewModel.getLocations(for: locationManager)
                       }
                   }
               }
           }

           struct locationMapView_Previews: PreviewProvider {
               static var previews: some View {
                   locationMapView().environmentObject(locationManager())
               }
           }

           struct logoView: View {
               var body: some View {
                   Image("map_logo")
                       .resizable()
                       .scaledToFit()
                       .frame(height: 85)
               }
           }
