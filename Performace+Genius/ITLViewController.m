//
//  ITLViewController.m
//  Performace+Genius
//
//  Created by Diego Andrade on 8/5/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "ITLViewController.h"
#import "ITLAnnotation.h"

#define METERS_PER_MILE 1609.344


@implementation ITLViewController
@synthesize mapView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    CLLocationCoordinate2D center = CLLocationCoordinate2DMake(CMU_LAT,CMU_LON);
    
    [self.mapView setRegion:MKCoordinateRegionMake(center,MKCoordinateSpanMake(0.1,0.1))];
    
    [self.mapView setShowsUserLocation:YES];
    
    //4
    self.mapView.delegate = self;
    //5
    CLLocationCoordinate2D coordinate1;
    coordinate1.latitude = 40.740384;
    coordinate1.longitude = -73.991146;
    ITLAnnotation *annotation = [[ITLAnnotation alloc] initWithCoordinate:coordinate1 title:@"Starbucks NY"];
    [self.mapView addAnnotation:annotation];
    
    CLLocationCoordinate2D coordinate2;
    coordinate2.latitude = 40.741623;
    coordinate2.longitude = -73.992021;
    ITLAnnotation *annotation2 = [[ITLAnnotation alloc] initWithCoordinate:coordinate2 title:@"Pascal Boyer Gallery"];
    [self.mapView addAnnotation:annotation2];
    
    CLLocationCoordinate2D coordinate3;
    coordinate3.latitude = 40.739490;
    coordinate3.longitude = -73.991154;
    ITLAnnotation *annotation3 = [[ITLAnnotation alloc] initWithCoordinate:coordinate3 title:@"Virgin Records"];
    [self.mapView addAnnotation:annotation3];
    

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -Program
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    //1
    CLLocationCoordinate2D zoomLocation;
    zoomLocation.latitude = 40.740848;
    zoomLocation.longitude= -73.991145;
    // 2
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(zoomLocation, 0.3*METERS_PER_MILE, 0.3*METERS_PER_MILE);
    [self.mapView setRegion:viewRegion animated:YES];
}


#pragma mark -MapView Delegate Methods
//6
- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation {
    //7
    if([annotation isKindOfClass:[MKUserLocation class]])
        return nil;
    
    //8
    static NSString *identifier = @"ITLAnnotation";
    MKPinAnnotationView * annotationView = (MKPinAnnotationView*)[self.mapView dequeueReusableAnnotationViewWithIdentifier:identifier];
    if (!annotationView)
    {
        //9
        annotationView = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:identifier];
        annotationView.pinColor = MKPinAnnotationColorPurple;
        annotationView.animatesDrop = YES;
        annotationView.canShowCallout = YES;
    }else {
        annotationView.annotation = annotation;
    }
    annotationView.rightCalloutAccessoryView = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
    return annotationView;
}



@end
