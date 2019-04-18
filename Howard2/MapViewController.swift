//
//  MapViewController.swift
//  Howard2
//
//  Created by Y Z on 4/16/19.
//  Copyright © 2019 William Risigo. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MapViewController: UIViewController, MKMapViewDelegate {
    
    let locationManager = CLLocationManager.init()
    var state: Int = 0
    

    @IBOutlet var mapView: MKMapView!
    var geoButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.requestLocation()
        
        if CLLocationManager.locationServicesEnabled() {
            //locationManager.startUpdatingHeading()
            locationManager.startUpdatingLocation()
        }
        
        mapView.showsUserLocation = true
        mapView.delegate = self
        // ** GeoButton options **
        
        let geoButton = UIButton(type: .custom)
        let buttonWidth = 40
        
        geoButton.frame = CGRect(x: 15,y: 100,width: buttonWidth, height: buttonWidth)
        geoButton.layer.cornerRadius = 0.5 * geoButton.bounds.size.width
        geoButton.layer.borderWidth = 0.25
        geoButton.layer.borderColor = UIColor.darkGray.cgColor
        geoButton.layer.backgroundColor = UIColor.lightGray.cgColor
        geoButton.setTitle("▲", for: UIControl.State())
        geoButton.setTitleColor(UIColor.darkGray, for: UIControl.State())
        geoButton.addTarget(self, action: #selector(MapViewController.geoButtonAction(_:)), for: .touchUpInside)
        
        view.addSubview(geoButton)
    }
    
    @objc func geoButtonAction(_ sender: UIButton!) {
        let span = MKCoordinateSpan.init(latitudeDelta: 0.0075, longitudeDelta: 0.0075)
        if locationManager.location != nil {
            let region = MKCoordinateRegion.init(center: (locationManager.location?.coordinate)!, span: span)
            mapView.setRegion(region, animated: true)
        }
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        return nil
    }

}


extension MapViewController : CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("error:: \(error.localizedDescription)")
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        if status == .authorizedWhenInUse {
            locationManager.requestLocation()
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
         let userLocation:CLLocation = locations[0] as CLLocation
        
        // Drop a pin at user's Current Location
        let myAnnotation: MKPointAnnotation = MKPointAnnotation()
        myAnnotation.coordinate = CLLocationCoordinate2DMake(userLocation.coordinate.latitude, userLocation.coordinate.longitude);
        myAnnotation.title = "Current location"
        mapView.addAnnotation(myAnnotation)
        
        if locations.first != nil {
            print("location:: (location)")
        }
        
        func locationManager(manager: CLLocationManager, didFailWithError error: NSError)
        {
            print("Error \(error)")
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
