//
//  ITLViewController.h
//  Performace+Genius
//
//  Created by Diego Andrade on 8/5/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

#define CMU_LAT 40.4444089
#define CMU_LON -79.953333

@interface ITLViewController : UIViewController

@property (weak, nonatomic) IBOutlet MKMapView *mapView;

- (id)initWithAnnotation:(id <MKAnnotation>)annotation reuseIdentifier:(NSString *)reuseIdentifier;


@end
