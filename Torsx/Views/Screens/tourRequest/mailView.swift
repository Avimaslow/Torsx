//
//  mailView.swift
//  Torsx
//
//  Created by Avi Maslow on 8/6/24.
//

import SwiftUI
import MessageUI

struct MailView: UIViewControllerRepresentable {
    @Binding var isPresented: Bool
    var apartmentAddress: String
    var tourDate: Date
    var fullName: String
    var cellNumber: String
    var combinedIncome: String
    var guarantorsIncome: String
    var minBedrooms: String
    
    class Coordinator: NSObject, MFMailComposeViewControllerDelegate {
        @Binding var isPresented: Bool
        
        init(isPresented: Binding<Bool>) {
            _isPresented = isPresented
        }
        
        func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
            isPresented = false
            controller.dismiss(animated: true)
        }
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(isPresented: $isPresented)
    }
    
    func makeUIViewController(context: Context) -> MFMailComposeViewController {
        let vc = MFMailComposeViewController()
        vc.mailComposeDelegate = context.coordinator
        vc.setToRecipients(["office@torsx.com"])
        vc.setSubject("Tour Request")
        vc.setMessageBody("""
            Which apartment address would you like to tour?
            \(apartmentAddress)
            
            Schedule a Time and Date to Tour
            \(tourDate.formatted(date: .long, time: .omitted))
            
            Full Name
            \(fullName)
            
            Cell Number (Required to setup on demand tours)
            \(cellNumber)
            
            Combined Income for Tenants
            \(combinedIncome)
            
            Guarantors Income
            \(guarantorsIncome)
            
            Minimum Amount of Bedrooms Needed?
            \(minBedrooms)
            
            If not the apartment is no longer available then we will send you available options based on your criteria.
            """, isHTML: false)
        return vc
    }
    
    func updateUIViewController(_ uiViewController: MFMailComposeViewController, context: Context) {}
}
