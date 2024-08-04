//
//  locationManager.swift
//  Torsx
//
//  Created by Avi Maslow on 8/5/24.
//

import Foundation

final class locationManager: ObservableObject {
    @Published var locations: [TorsXLocation] = []
    var selectedLocation: TorsXLocation?
}
