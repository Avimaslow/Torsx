//
//  AppTabView.swift
//  Torsx
//
//  Created by Avi Maslow on 8/4/24.
//

import SwiftUI

struct AppTabView: View {
    @StateObject private var viewModel = appTabViewModel()
    init() {
        let appearence = UITabBarAppearance()
        appearence.backgroundEffect = UIBlurEffect(style: .systemUltraThinMaterial)
        UITabBar.appearance().scrollEdgeAppearance = appearence
       // cloudkitManager.shared.subscribeToNewApartments()
    }
    var body: some View {
        TabView {
            locationMapView()
                .tabItem {
                    Label("Map", systemImage: "map")
                }
            LocationListView()
                .tabItem {
                    Label("Rentals", systemImage: "house")
                }
            contactUsView()
                .tabItem {
                    Label("Contact", systemImage: "phone.fill")
                }
            aboutUsView()
                .tabItem {
                    Label("About", systemImage: "person.crop.circle.badge.questionmark.fill")
                }
            faqsView()
                .tabItem {
                    Label("FAQS", systemImage: "info.bubble.fill")
                }
            
         
        }
        .task{
            
            viewModel.checkIfLocationServEnabled()
        }
        .accentColor(.colorPrimary)
    }
}

#Preview {
    AppTabView()
}
