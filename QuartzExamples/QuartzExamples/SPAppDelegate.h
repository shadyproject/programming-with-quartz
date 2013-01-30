//
//  SPAppDelegate.h
//  QuartzExamples
//
//  Created by Christopher Martin on 1/27/13.
//  Copyright (c) 2013 Shadyproject. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "SPQuartzExampleView.h"

//yuck
const NSUInteger kListing2point1 = 1;
const NSUInteger kListing2point2 = 2;
const NSUInteger kListing2point3 = 3;

@interface SPAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (retain) IBOutlet SPQuartzExampleView *exampleView;
@property (retain) IBOutlet NSPopUpButton *exampleMenu;

@end
