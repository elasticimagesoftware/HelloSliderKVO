//
//  HelloSliderKVOAppDelegate.h
//  HelloSliderKVO
//
//  Created by Douglass Turner on 5/12/10.
//  Copyright Elastic Image Software LLC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HelloSliderKVOViewController;

@interface HelloSliderKVOAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    HelloSliderKVOViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet HelloSliderKVOViewController *viewController;

@end

