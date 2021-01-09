//
//  NewMapViewController.h
//  Wine Flight
//
//  Created by Ian French on 1/8/21.
//


#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface NewMapViewController : UIViewController <CLLocationManagerDelegate>

@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (strong, nonatomic) CLLocationManager *locationManager;
@property (strong, nonatomic) CLLocation *location;




@end
