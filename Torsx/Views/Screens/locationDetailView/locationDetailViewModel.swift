//
//  locationDetailViewModel.swift
//  Torsx
//
//  Created by Avi Maslow on 8/5/24.
//

import Foundation
import SwiftUI
import MapKit
final class locationDetailViewModel: ObservableObject {
    @Published var alertItem: AlertItem?
    var location: TorsXLocation
    
    init (location: TorsXLocation){
        self.location = location
    }
    
    func getDirectionsToLocations(){
        let placemark = MKPlacemark(coordinate: location.location.coordinate)
        let mapItem = MKMapItem(placemark: placemark)
        //let priceString = String(location.price)
       // mapItem.name = "\(location.name) - $\(priceString)"
        mapItem.name = location.name
        
        mapItem.openInMaps(launchOptions: [MKLaunchOptionsDirectionsModeKey: MKLaunchOptionsDirectionsModeDriving])
    }
    func callAgent() {
        guard let url = URL(string: "tel://\(location.phoneNum)") else {
            alertItem = AlertContext.invalidPhoneNum
            return
        }
                UIApplication.shared.open(url)
    }
}
