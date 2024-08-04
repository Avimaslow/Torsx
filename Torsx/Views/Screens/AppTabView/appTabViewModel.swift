//
//  appTabViewModel.swift
//  Torsx
//
//  Created by Avi Maslow on 8/5/24.
//

import CoreLocation

final class appTabViewModel: NSObject, ObservableObject {
    
    @Published var alertItem: AlertItem?
    var deviceLocationManager: CLLocationManager?

    func checkIfLocationServEnabled(){
        if CLLocationManager.locationServicesEnabled() {
            DispatchQueue.global(qos: .userInitiated).async {
                self.deviceLocationManager = CLLocationManager()
                self.deviceLocationManager?.delegate = self
                DispatchQueue.main.async {
                    self.checkLocationAuthorization()
                }
            }
        } else {
            alertItem = AlertContext.locationDisabled
        }
    }
    
    private func checkLocationAuthorization() {
        guard let deviceLocationManager = deviceLocationManager else { return }
        
        DispatchQueue.main.async {
            switch deviceLocationManager.authorizationStatus {
            case .notDetermined:
                deviceLocationManager.requestWhenInUseAuthorization()
            case .restricted:
                self.alertItem = AlertContext.locationRestricted
            case .denied:
                self.alertItem = AlertContext.locationDenied
            case .authorizedAlways, .authorizedWhenInUse:
                break
            @unknown default:
                break
            }
        }
    }
}

extension appTabViewModel: CLLocationManagerDelegate {
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        DispatchQueue.main.async {
            self.checkLocationAuthorization()
        }
    }
}
