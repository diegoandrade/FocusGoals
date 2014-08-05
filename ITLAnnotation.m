//
//  ITLAnnotation.m
//  Performace+Genius
//
//  Created by Diego Andrade on 8/5/14.
//  Copyright (c) 2014 Diego Andrade. All rights reserved.
//

#import "ITLAnnotation.h"

@implementation ITLAnnotation


//3.2
-(id) initWithCoordinate:(CLLocationCoordinate2D)coordinate title:(NSString *)title {
    if ((self = [super init])) {
        self.coordinate =coordinate;
        self.title = title;
    }
    return self;
}

@end

