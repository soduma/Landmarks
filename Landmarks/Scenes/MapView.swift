//
//  MapView.swift
//  Landmarks
//
//  Created by 장기화 on 2022/04/13.
//

import SwiftUI
import MapKit

struct MapView: View {
    var cooldinate: CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion()
    
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
                setRegion(cooldinate)
            }
    }
    
    private func setRegion(_ cooldinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(center: cooldinate, span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(cooldinate: CLLocationCoordinate2D(latitude: 37.4855049, longitude: 126.9299626))
    }
}
