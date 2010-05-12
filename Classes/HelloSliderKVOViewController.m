//
//  HelloSliderKVOViewController.m
//  HelloSliderKVO
//
//  Created by Douglass Turner on 5/12/10.
//  Copyright Elastic Image Software LLC 2010. All rights reserved.
//

#import "HelloSliderKVOViewController.h"
#import "Counter.h"
#import "Observer.h"

@implementation HelloSliderKVOViewController

@synthesize slider = m_slider;
@synthesize label = m_label;
@synthesize counter = m_counter;
@synthesize observer = m_observer;

- (void)dealloc {
	
    [m_slider	release], m_slider		= nil;
    [m_label	release], m_label		= nil;
    [m_counter	release], m_counter		= nil;
    [m_observer	release], m_observer	= nil;
	
	self.slider	= nil;
    self.label	= nil;

	
    [super dealloc];
}

-(void) updateLabel:(NSNumber *)newValue {
	
	NSLog(@"HelloSliderKVO ViewController - updateLabel: %@", newValue);
	
	self.label.text = [NSString stringWithFormat:@"%f", [newValue floatValue]];
}

- (void)viewDidLoad {

    self.observer = [[[Observer alloc] initWithTarget:self action:@selector(updateLabel:)] autorelease];
		
	[self.counter addObserver:self.observer forKeyPath:@"count" options:NSKeyValueObservingOptionNew context:NULL];	
	
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

@end
