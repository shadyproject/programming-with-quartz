//
//  SPQuartzExampleView.m
//  QuartzExamples
//
//  Created by Christopher Martin on 1/28/13.
//  Copyright (c) 2013 Shadyproject. All rights reserved.
//

#import "SPQuartzExampleView.h"

@implementation SPQuartzExampleView

@synthesize exampleMenu;

- (void)drawRect:(NSRect)dirtyRect
{
    [self doSimpleRect];
}

- (void)doSimpleRect
{
    CGRect ourRect;
    CGContextRef context = [[NSGraphicsContext currentContext] graphicsPort];
    
    CGContextSetRGBFillColor(context, 1.0, 0.0, 0.0, 1.0);
    
    ourRect.origin.x = ourRect.origin.y = 20.0;
    ourRect.size.width = 130.0;
    ourRect.size.height = 100.0;
    
    CGContextFillRect(context, ourRect);
    
}

#pragma mark -
#pragma mark IBActions
- (IBAction)drawExample:(id)sender
{
    NSMenuItem *item = [exampleMenu selectedItem];
    NSLog(@"Drawing Example %@", item);
}

@end
