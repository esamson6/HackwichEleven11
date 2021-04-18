//
//  ViewController.swift
//  HackwichEleven11
//
//  Created by Erin Samson on 4/15/21.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    let locationManger = CLLocationManager()
    
    //set up initial location (lat, long) for our map
    let initialLocation = CLLocation(latitude: 21.35622325850733, longitude: -158.05621900337144)
    
    //declare a region radius around our initialLocation
     let regionRadius: CLLocationDistance = 10000
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //set navigation title
        title = "Eats"
        
        //Do any additional setup after loading the view.
        centerMapOnLocation(location: initialLocation)
        
    
        let restaurantOne = restaurantAnnotation(title:"Kalapawai", type:"American", coordinate: CLLocationCoordinate2D(latitude: 21.346470, longitude: -158.080098))
        mapView.addAnnotation(restaurantOne)
    
       let restaurantTwo = restaurantAnnotation(title:"Pho Company", type:"Vietnamese", coordinate: CLLocationCoordinate2D(latitude: 21.33549, longitude: -158.08304))
        mapView.addAnnotation(restaurantTwo)
        
        let restaurantThree = restaurantAnnotation(title:"Julie'z", type:"Filipino", coordinate: CLLocationCoordinate2D(latitude: 21.33801, longitude: -158.08044))
         mapView.addAnnotation(restaurantThree)
        
        let restaurantFour = restaurantAnnotation(title:"Assaggio", type:"Italian-American", coordinate: CLLocationCoordinate2D(latitude: 21.33274, longitude: -158.08291))
         mapView.addAnnotation(restaurantFour)
        
        let restaurantFive = restaurantAnnotation(title:"Brick Oven Pizza", type:"Italian-American", coordinate: CLLocationCoordinate2D(latitude: 21.33254, longitude: -158.08226))
         mapView.addAnnotation(restaurantFive)
        
}


    
    func centerMapOnLocation(location:CLLocation)
    {
        let coordinateRegion = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        mapView.setRegion(coordinateRegion, animated:true)
    }
}
    





