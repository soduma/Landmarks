//
//  Landmark.swift
//  Landmarks
//
//  Created by 장기화 on 2022/04/13.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Codable, Hashable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Cooldinates
    var locationCooldinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.latitude)
    }
    
    struct Cooldinates: Codable, Hashable {
        var latitude: Double
        var longitude: Double
    }
}
