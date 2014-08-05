//
//  ITLAnnotation.h
//  Performace+Genius
//
//  Created by Diego Andrade on 8/5/14.
//  Copyright (c) 2014 Diego Andrade. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

//3.2
@interface ITLAnnotation : NSObject <MKAnnotation>
@property (strong, nonatomic) NSString * title;
@property (nonatomic,assign) CLLocationCoordinate2D coordinate;

-(id) initWithCoordinate:(CLLocationCoordinate2D)coordinate title:(NSString *)title;

@end

