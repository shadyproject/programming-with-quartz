//
//  SPQuartzExampleView.h
//  QuartzExamples
//
//  Created by Christopher Martin on 1/28/13.
//  Copyright (c) 2013 Shadyproject. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface SPQuartzExampleView : NSView

@property IBOutlet NSPopUpButton *exampleMenu;

- (IBAction)drawExample:(id)sender;

@end
