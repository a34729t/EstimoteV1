//
//  BeaconManager.m
//  EstimoteV1
//
//  Created by Nicolas Flacco on 3/1/14.
//  Copyright (c) 2014 Nicolas Flacco. All rights reserved.
//

#import "BeaconManager.h"

@interface BeaconManager ()

-(void)sendNotification:(NSString*)message;

@end

@implementation BeaconManager

+ (BeaconManager *)sharedInstance
{
    static dispatch_once_t once=0;
    __strong static id _sharedInstance = nil;
    dispatch_once(&once, ^{
        _sharedInstance = [[self alloc] init];
    });
    return _sharedInstance;
}

-(id)init{
    if (self=[super init]) {
        // TODO
    }
    return self;
}

#pragma mark - CLLocationManagerDelegate methods

// TODO

#pragma mark local notifications

-(void)sendNotification:(NSString*)message {
    UILocalNotification *notification = [[UILocalNotification alloc] init];
    notification.fireDate = [NSDate date];
    NSTimeZone* timezone = [NSTimeZone defaultTimeZone];
    notification.timeZone = timezone;
    notification.alertBody = message;
    notification.alertAction = @"Show";  //creates button that launches app
    notification.soundName = UILocalNotificationDefaultSoundName;
    notification.applicationIconBadgeNumber=[[UIApplication sharedApplication] applicationIconBadgeNumber]+1;
    
    // to pass information with notification
    NSDictionary *userDict = [NSDictionary dictionaryWithObject:message forKey:NOTIF_KEY];
    notification.userInfo = userDict;
    [[UIApplication sharedApplication] scheduleLocalNotification:notification];
}


@end
