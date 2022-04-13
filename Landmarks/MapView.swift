//
//  MapView.swift
//  Landmarks
//
//  Created by 장기화 on 2022/04/13.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.4855049, longitude: 126.9299626), span: MKCoordinateSpan(latitudeDelta: 0.003, longitudeDelta: 0.003))
    
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
