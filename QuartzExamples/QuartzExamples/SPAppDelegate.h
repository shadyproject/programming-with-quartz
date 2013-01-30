//
//  SPAppDelegate.h
//  QuartzExamples
//
//  Created by Christopher Martin on 1/27/13.
//  Copyright (c) 2013 Shadyproject. All rights reserved.
//

#import <Cocoa/Cocoa.h>

const NSUInteger kThing = 42;

@interface SPAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (retain) IBOutlet NSView *exampleView;
@property (retain) IBOutlet NSPopUpButton *exampleMenu;

@end
