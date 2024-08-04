//
//  locationMapViewModel.swift
//  Torsx
//
//  Created by Avi Maslow on 8/5/24.
//


import MapKit
import CloudKit
import SwiftUI

final class locationMapViewModel: NSObject, ObservableObject, CLLocationManagerDelegate {
    @Published var isShowingDetailView = false
    @Published var isShowingLookAround = false
    @Published var route: MKRoute?
    @Published var alertItem: AlertItem?
    @Published var isLoading = false
    @Published var cameraPosition: MapCameraPosition = .region(.init(center: CLLocationCoordinate2D(latitude: 40.65277229112394, longitude: -73.9544198372157),
                                                                      latitudinalMeters: 7200,
                                                                      longitudinalMeters: 7200))
    
    var lookAroundScene: MKLookAroundScene? {
        didSet {
            if let _ = lookAroundScene {
                isShowingLookAround = true
            }
        }
    }
    
    let deviceLocationManager = CLLocationManager()
    
    override init() {
        super.init()
        deviceLocationManager.delegate = self
    }
    
    func requestAllowOnceLocationPerm() {
        deviceLocationManager.requestLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let currentLocation = locations.last else { return }
        
        withAnimation {
            cameraPosition = .region(.init(center: currentLocation.coordinate, latitudinalMeters: 1200, longitudinalMeters: 1200))
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("did fail with error: \(error.localizedDescription)")
    }
    
    func getLocations(for locationManager: locationManager) {
        isLoading = true
        cloudkitManager.getLocations { [weak self] result in
            DispatchQueue.main.async {
                self?.isLoading = false
                switch result {
                case .success(let locations):
                    locationManager.locations = locations
                case .failure(let error):
                    print("Failed to fetch locations: \(error.localizedDescription)")
                    self?.alertItem = AlertContext.unableToGetLocation
                }
            }
        }
    }
    
    @MainActor
    func getLookAroundScene(for location: TorsXLocation) {
        Task {
            let request = MKLookAroundSceneRequest(coordinate: location.location.coordinate)
            lookAroundScene = try? await request.scene
        }
    }
    
    @MainActor
    func getDirections(to location: TorsXLocation) {
        guard let userLocation = deviceLocationManager.location?.coordinate else { return }
        let destination = location.location.coordinate
        let request = MKDirections.Request()
        request.source = MKMapItem(placemark: .init(coordinate: userLocation))
        request.destination = MKMapItem(placemark: .init(coordinate: destination))
        request.transportType = .automobile
        
        Task {
            let directions = try? await MKDirections(request: request).calculate()
            route = directions?.routes.first
        }
    }
}
