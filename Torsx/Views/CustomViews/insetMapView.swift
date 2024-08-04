//
//  insetMapView.swift
//  Torsx
//
//  Created by Avi Maslow on 8/6/24.
//
import SwiftUI
import MapKit

// Define a custom struct conforming to Identifiable
struct place: Identifiable {
    let id = UUID()
    let coordinate: CLLocationCoordinate2D
}

struct insetMapView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 40.703039668864434, longitude: -73.9841963153436), span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02))
    
    // Create a Location instance for the marker
    let markerLocation = place(coordinate: CLLocationCoordinate2D(latitude: 40.703039668864434, longitude: -73.9841963153436))
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: [markerLocation]) { location in
            MapAnnotation(coordinate: location.coordinate) {
                
                VStack {
                    ZStack {
                        mapCircle()
                            .fill(Color.black.gradient)
                            .frame(width: 100,height: 70)
                           // .foregroundColor(.brandPrimary)
                        
                        Image("appLogo")
                            .resizable()
                            .frame(width: 45, height: 45)
                            .clipShape(Circle())
                            .offset(y: -10)
                        
                        
                                  
                    }
               
                    Text("HQ")
                        .font(.caption)
                        .fontWeight(.semibold)
                    
                    
                }
              //  VStack {
                 //   mapCircle()
                  //      .frame(width: 30, height: 30)
                 //   Text("HQ")
                 //       .font(.caption)
                //        .foregroundColor(.brandPrimary)
               // }
            }
        }
        .overlay(
            NavigationLink(destination: locationMapView()) {
                EmptyView() // Provide an actual view or empty view for navigation
            }
        )
        .frame(height: 256)
        .cornerRadius(12)
    }
}

#Preview {
    insetMapView()
}

