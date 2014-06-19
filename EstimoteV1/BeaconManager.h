//
//  BeaconManager.h
//  EstimoteV1
//
//  Created by Nicolas Flacco on 3/1/14.
//  Copyright (c) 2014 Nicolas Flacco. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BeaconManager;

@protocol BeaconManagerDelegate <NSObject>

@end

@interface BeaconManager : NSObject

+(BeaconManager*)sharedInstance;

@end
