//
//  TorsxApp.swift
//  Torsx
//
//  Created by Avi Maslow on 8/4/24.
//

import SwiftUI

@main
struct TorsxApp: App {
    let LocationManager = locationManager()
    var body: some Scene {
        WindowGroup {
            AppTabView()
                .environmentObject(LocationManager)
        }
    }
}


/*
@main
struct TorsxApp: App {
    let LocationManager = locationManager()
    var body: some Scene {
        WindowGroup {
            AppTabView()
                .environmentObject(LocationManager)
        }
    }
}
*/

