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
    var isFavorite: Bool
    var isFeatured: Bool
    
    var category: Category
    enum Category: String, CaseIterable, Codable {
        case lakes = "Lakes"
        case rivers = "Rivers"
        case mountains = "Mountains"
    }
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    var featureImage: Image? {
        isFeatured ? Image(imageName + "_feature") : nil
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
