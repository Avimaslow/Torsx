//
//  alertItem.swift
//  Torsx
//
//  Created by Avi Maslow on 8/5/24.
//

import SwiftUI
struct AlertItem: Identifiable {
    let id = UUID()
    let title : Text
    let message : Text
    let dismissButton : Alert.Button
}
struct AlertContext {
    
    //MARK: - MapView Errors
    static let unableToGetLocation = AlertItem(title: Text("Locations Errors"),
                                           message: Text("Unable to retrive the locations at this time \nPlease try again at a later time"),
                                           dismissButton: .default(Text("Ok")))
    static let locationRestricted   = AlertItem(title: Text("Locations Restricted"),
                                                    message: Text("You location is restricted. This may be due to parental controls."),
                                                    dismissButton: .default(Text("Ok")))
        
        static let locationDenied       = AlertItem(title: Text("Locations Denied"),
                                                    message: Text("Dub Dub Grub does not have permission to access your location. To change that go to your phone's Settings > TorsX > Location"),
                                                    dismissButton: .default(Text("Ok")))
        
        static let locationDisabled     = AlertItem(title: Text("Locations Service Disabled"),
                                                    message: Text("Your phone's location services are disabled. To change that go to your phone's Settings > Privacy > Location Services"),
                                                    dismissButton: .default(Text("Ok")))
    
    //MARK: - LocationDetailView Errors
    static let invalidPhoneNum     = AlertItem(title: Text("Invalid Phone Number"),
                                                message: Text("The phone number for this rental is invalid. Please look up TorsX online and leave us a call"),
                                                dismissButton: .default(Text("Ok")))
    }


