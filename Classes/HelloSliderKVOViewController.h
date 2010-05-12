//
//  HelloSliderKVOViewController.h
//  HelloSliderKVO
//
//  Created by Douglass Turner on 5/12/10.
//  Copyright Elastic Image Software LLC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Counter;
@class Observer;
@interface HelloSliderKVOViewController : UIViewController {
	
	UISlider	*m_slider;
	UILabel		*m_label;
	Counter		*m_counter;
	Observer	*m_observer;
}

@property(nonatomic,retain) IBOutlet UISlider	*slider;
@property(nonatomic,retain) IBOutlet UILabel	*label;
@property(nonatomic,retain) IBOutlet Counter	*counter;
@property(nonatomic,retain)          Observer	*observer;

-(void) updateLabel:(NSNumber *)newValue;

@end

