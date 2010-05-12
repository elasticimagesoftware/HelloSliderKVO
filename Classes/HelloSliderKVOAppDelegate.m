//
//  HelloSliderKVOAppDelegate.m
//  HelloSliderKVO
//
//  Created by Douglass Turner on 5/12/10.
//  Copyright Elastic Image Software LLC 2010. All rights reserved.
//

#import "HelloSliderKVOAppDelegate.h"
#import "HelloSliderKVOViewController.h"

@implementation HelloSliderKVOAppDelegate

@synthesize window;
@synthesize viewController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
	
	return YES;
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
