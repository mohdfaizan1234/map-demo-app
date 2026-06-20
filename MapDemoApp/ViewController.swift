//
//  ViewController.swift
//  MapDemoApp
//
//  Created by Mohd Faizan on 18/04/26.
//

import UIKit
import MapKit

class ViewController: UIViewController {
     let mapView = MKMapView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.frame = view.bounds
        view.addSubview(mapView)
       
        let location = CLLocationCoordinate2D(latitude:28.6395, longitude
                                              :78.6427)
        let region = MKCoordinateRegion(center:location, latitudinalMeters:1000, longitudinalMeters:1000)
        
        mapView.setRegion(region, animated:true)
        
        let pin = MKPointAnnotation()
        pin.coordinate = location
        pin.title = "Sirsi sambhal"
        
        mapView.addAnnotation(pin)
        
    }
}

