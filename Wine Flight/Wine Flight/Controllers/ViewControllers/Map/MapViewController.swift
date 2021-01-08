//
//  MapViewController.swift
//  Wine Flight
//
//  Created by Ian French on 1/5/21.
//

import UIKit
import MapKit
import CoreLocation



class MapViewController: UIViewController {


    @IBOutlet weak var mapView: MKMapView!

    @IBOutlet weak var addressTextField: UITextField!

    @IBOutlet weak var pinLocationButton: UIButton!


    @IBAction func enterLocationTapped(_ sender: UIButton) {
       // add action to drop pin for address entered by user


    }

    let baseLocation = CLLocation(latitude: 37.789530, longitude: -122.397312)

    lazy var locationManager: CLLocationManager = {
          var manager = CLLocationManager()
          manager.distanceFilter = 10
          manager.desiredAccuracy = kCLLocationAccuracyBest
          return manager
      }()

    override func viewDidLoad() {
        super.viewDidLoad()

        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        // Do any additional setup after loading the view.
    }


    func updateLocationOnMap(to location: CLLocation, with title: String?) {

        let point = MKPointAnnotation()
        point.title = title
        point.coordinate = location.coordinate
        self.mapView.removeAnnotations(self.mapView.annotations)
        self.mapView.addAnnotation(point)

        let viewRegion = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: 200, longitudinalMeters: 200)
        self.mapView.setRegion(viewRegion, animated: true)
    }

//    func updatePlaceMark(to address: String) {
//
//        let geoCoder = CLGeocoder()
//        geoCoder.geocodeAddressString(address) { (placemarks, error) in
//            guard
//                let placemark = placemarks?.first,
//                let location = placemark.location
//            else { return }
//
//            self.updateLocationOnMap(to: location, with: placemark.stringValue)
//        }
//    }


}

extension MapViewController: CLLocationManagerDelegate {

    func locationManager(_ manager: CLLocationManager,
                         didChangeAuthorization status: CLAuthorizationStatus) {

        if status == .authorizedWhenInUse || status == .authorizedAlways {
            locationManager.startUpdatingLocation()
        }
    }
}

extension CLLocation {

    func lookUpPlaceMark(_ handler: @escaping (CLPlacemark?) -> Void) {

        let geocoder = CLGeocoder()

        // Look up the location and pass it to the completion handler
        geocoder.reverseGeocodeLocation(self) { (placemarks, error) in
            if error == nil {
                let firstLocation = placemarks?[0]
                handler(firstLocation)
            }
            else {
                // An error occurred during geocoding.
                handler(nil)
            }
        }
    }
//    func lookUpLocationName(_ handler: @escaping (String?) -> Void) {
//
//         lookUpPlaceMark { (placemark) in
//             handler(placemark?.stringValue)
//         }
//     }
}



private extension MKMapView {
  func centerToLocation(
    _ location: CLLocation,
    regionRadius: CLLocationDistance = 1000
  ) {
    let coordinateRegion = MKCoordinateRegion(
      center: location.coordinate,
      latitudinalMeters: regionRadius,
      longitudinalMeters: regionRadius)
    setRegion(coordinateRegion, animated: true)
  }
}
