//
//  MapViewController.swift
//  Howard2
//
//  Created by Noah Mintz Roberts on 4/16/19.
//  Copyright © 2019 Noah Mintz Roberts. All rights reserved.
//

//Imports used by MapViewController.swift
import UIKit
import MapKit
import CoreLocation

//Class definition and inheritance
class MapViewController: UIViewController, MKMapViewDelegate {
    
    //Initialize a location manager for the MKMapView
    let locationManager = CLLocationManager.init()
    var state: Int = 0
    
    //Outlet for the actual map
    @IBOutlet var mapView: MKMapView!
    
    //Button for centering on the user
    var geoButton: UIButton!
    
    //On the intial view controller load, but before the view controller is initially displayed
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Set the location manager delegate as itself
        locationManager.delegate = self
        
        //Set the target accuracy for the location calculations made by the location manager
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        
        //Gets permission from the user for location usage while the map is in use (but not in the background)
        locationManager.requestWhenInUseAuthorization()
        locationManager.requestLocation()
        
        //If the users phones location services are toggled on, start updating their location on the map
        if CLLocationManager.locationServicesEnabled() {
            locationManager.startUpdatingLocation()
        }
        
        //Show the user on the map
        mapView.showsUserLocation = true
        mapView.delegate = self
        
        // ** GeoButton Settings **
        let geoButton = UIButton(type: .custom)
        let buttonWidth = 40
        
        geoButton.frame = CGRect(x: 15,y: 100,width: buttonWidth, height: buttonWidth)
        geoButton.layer.cornerRadius = 0.5 * geoButton.bounds.size.width
        geoButton.layer.borderWidth = 0.25
        geoButton.layer.borderColor = UIColor.darkGray.cgColor
        geoButton.layer.backgroundColor = UIColor.lightGray.cgColor
        geoButton.setTitle("▲", for: UIControl.State())
        geoButton.setTitleColor(UIColor.darkGray, for: UIControl.State())
        
        //Add the geobuttonaction function to the button
        geoButton.addTarget(self, action: #selector(MapViewController.geoButtonAction(_:)), for: .touchUpInside)
        
        //Add the button to the map
        view.addSubview(geoButton)
    }
    
    //Center on the user when the map first appears
    override func viewWillAppear(_ animated: Bool) {
        geoButtonAction(geoButton)
    }
    
    //Button connected to the geo button we programmatically added to the map
    @objc func geoButtonAction(_ sender: UIButton!) {
        
        //Make a default zoom level
        let span = MKCoordinateSpan.init(latitudeDelta: 0.0040, longitudeDelta: 0.0040)
        
        //Assuming we have a location from the user
        if locationManager.location != nil {
            
            //Create a map region centered on the user
            let region = MKCoordinateRegion.init(center: (locationManager.location?.coordinate)!, span: span)
            
            //Set the map view to the centered on the user region
            mapView.setRegion(region, animated: true)
        }
    }
    
    //Default map view functionality, setting animation, etc.
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        return nil
    }

}

//Extending map view controller to add overrides
extension MapViewController : CLLocationManagerDelegate {
    
    //Error reporting on location manager errors
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("error:: \(error.localizedDescription)")
    }
    
    //Checks if location authorization has changed and if it does change the map will start to work/stop working
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        if status == .authorizedWhenInUse {
            locationManager.requestLocation()
        }
    }
    
    //When a new location is reported from the user recenter the map on them with the same span/region technique as above
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.first {
            let span = MKCoordinateSpan(latitudeDelta: 0.0040, longitudeDelta: 0.0040)
            let region = MKCoordinateRegion(center: location.coordinate, span: span)
            mapView.setRegion(region, animated: true)
        }
        
        //The newest location is always the first object in the location array
        let userLocation:CLLocation = locations[0] as CLLocation
        
        // Drop a pin at user's Current Location
        let myAnnotation: MKPointAnnotation = MKPointAnnotation()
        myAnnotation.coordinate = CLLocationCoordinate2DMake(userLocation.coordinate.latitude, userLocation.coordinate.longitude);
        myAnnotation.title = "Current location"
        mapView.addAnnotation(myAnnotation)
        
        //If the newest location isn't empty print it to the console
        if locations.first != nil {
            print("location:: (location)")
        }
    }
}
