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
    CGContextRef context = [[NSGraphicsContext currentContext] graphicsPort];
    
    //[self drawSimpleRectInContext:context];
    [self drawStrokedRectInContext:context];
}

//Listing 2.1
- (void)drawSimpleRectInContext:(CGContextRef)context
{
    CGRect ourRect;
    
    CGContextSetRGBFillColor(context, 1.0, 0.0, 0.0, 1.0);
    
    ourRect.origin.x = ourRect.origin.y = 20.0;
    ourRect.size.width = 130.0;
    ourRect.size.height = 100.0;
    
    CGContextFillRect(context, ourRect);
    
}

//Listing 2.2
- (void) drawStrokedRectInContext:(CGContextRef)context
{
    CGRect ourRect;
    
    CGContextSetRGBStrokeColor(context, 0.482, 0.62, 0.871, 1.0);
    
    ourRect.origin.x = ourRect.origin.y = 20.0;
    ourRect.size.width = 130.0;
    ourRect.size.height = 100.0;
    
    CGContextStrokeRectWithWidth(context, ourRect, 3.0);
}

//Listing 2.3
- (void)drawStrokedAndFilledRectInContext:(CGContextRef)context
{
    
}

#pragma mark -
#pragma mark IBActions
- (IBAction)drawExample:(id)sender
{
    NSMenuItem *item = [exampleMenu selectedItem];
    NSLog(@"Drawing Example %@", item);
}

@end
