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
        //Do any additional setup after loading the view.
        centerMapOnLocation(location: initialLocation)
        
        //add annotation in viewDidLoad
        let restaurantOne = restaurantAnnotation(title:"Kalapawai", type:"American", coordinate: CLLocationCoordinate2D(latitude: 21.35622325850733, longitude: -158.05621900337144))
        mapView.addAnnotation(restaurantOne)
    }
    
    func centerMapOnLocation(location:CLLocation)
    {
        let coordinateRegion = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        mapView.setRegion(coordinateRegion, animated:true)
    }
    
    }



