//
//  RestaurantAnnotation.swift
//  HackwichEleven11
//
//  Created by Erin Samson on 4/15/21.
//

import UIKit
import MapKit

class restaurantAnnotation: NSObject, MKAnnotation {
    
    let restaurantTitle: String?
    let restaurantType: String?
    var coordinate: CLLocationCoordinate2D
    
    init(title: String, type: String, coordinate: CLLocationCoordinate2D) {
        self.restaurantTitle = title
        self.restaurantType = type
        self.coordinate = coordinate
        
        super.init()
        
    }
    
    var subtitle: String?{
        return restaurantTitle
        
    }
    
    

}
