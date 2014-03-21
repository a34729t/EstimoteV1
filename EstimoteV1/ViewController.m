//
//  ViewController.m
//  EstimoteV1
//
//  Created by Nicolas Flacco on 2/27/14.
//  Copyright (c) 2014 Nicolas Flacco. All rights reserved.
//

#import "ViewController.h"
#import "BeaconManager.h"

@interface ViewController () <BeaconManagerDelegate>

@property (nonatomic, strong) BeaconManager *beaconManager;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSLog(@"started!");
    
    self.beaconManager = [BeaconManager sharedInstance];
    self.beaconManager.delegate = self;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)scanButtonPressed:(UIButton *)sender
{
}

-(void)discoveredBeacon:(NSString *)key distance:(NSString *)distanceStr
{
    NSLog(@"View discoveredBeacon distance:%@", distanceStr);
    [self.rssiLabel setText:distanceStr];
}

@end
