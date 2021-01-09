//
//  NewMapViewController.m
//  Wine Flight
//
//  Created by Ian French on 1/8/21.
//

#import "NewMapViewController.h"

@interface NewMapViewController ()
@property (nonatomic, strong) NSMutableArray *allPins;
@property (nonatomic, strong) MKPolylineRenderer *lineView;
@property (nonatomic, strong) MKPolyline *polyline;
@end

@implementation NewMapViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.locationManager = [[CLLocationManager alloc] init];
    self.locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    self.locationManager.delegate = self;
    [self.locationManager startUpdatingLocation];
}

- (IBAction)searchBox:(UITextField *)sender {
    CLGeocoder *geocoder = [[CLGeocoder alloc] init];
    [geocoder geocodeAddressString:sender.text completionHandler:^(NSArray *placemarks, NSError *error) {
        if (error) {
            NSLog(@"%@", error);
        } else {
            CLPlacemark *placemark = [placemarks lastObject];
            float spanX = 0.0125;
            float spanY = 0.0125;
            MKCoordinateRegion region;
            region.center.latitude = placemark.location.coordinate.latitude;
            region.center.longitude = placemark.location.coordinate.longitude;
            region.span = MKCoordinateSpanMake(spanX, spanY);
            [self.mapView setRegion:region animated:YES];
            MKPointAnnotation *point = [[MKPointAnnotation alloc] init];
            point.coordinate = placemark.location.coordinate;
            point.title = @"Delivery destination";
            point.subtitle = [NSString stringWithFormat:@"%f, %f", placemark.location.coordinate.latitude, placemark.location.coordinate.longitude];

            [self.mapView addAnnotation:point];
        }
    }];
}
- (IBAction)pinLocation:(UIButton *)sender {

    float spanX = 0.0525;
    float spanY = 0.0525;
    self.location = self.locationManager.location;
    MKCoordinateRegion region;
    region.center.latitude = 37.789530;
    region.center.longitude = -122.397312;
    region.span = MKCoordinateSpanMake(spanX, spanY);
    [self.mapView setRegion:region animated:YES];
    [self reverseGeocode:self.location];
    MKPointAnnotation *point = [[MKPointAnnotation alloc] init];
    point.coordinate = region.center;
    point.title = @"Base";
    point.subtitle = [NSString stringWithFormat:@"%f, %f", region.center.latitude, region.center.longitude];
    [self.mapView addAnnotation:point];
}

- (void)reverseGeocode:(CLLocation *)location {
    CLGeocoder *geocoder = [[CLGeocoder alloc] init];
    [geocoder reverseGeocodeLocation:location completionHandler:^(NSArray *placemarks, NSError *error) {
        NSLog(@"Finding address");
        if (error) {
            NSLog(@"Error %@", error.description);
        } else {
            return;
//
        }
    }];
}

- (IBAction)routeButton:(UIButton *)sender {
    float spanX = 0.225;
    float spanY = 0.225;
    self.location = self.locationManager.location;
    MKCoordinateRegion region;
    region.center.latitude = 37.828477;
    region.center.longitude = -122.483141;
    region.span = MKCoordinateSpanMake(spanX, spanY);
    [self.mapView setRegion:region animated:YES];
    [self reverseGeocode:self.location];

    }

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

    @end


