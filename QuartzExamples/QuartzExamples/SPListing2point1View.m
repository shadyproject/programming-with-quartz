//
//  SPListing2point1View.m
//  QuartzExamples
//
//  Created by Christopher Martin on 1/29/13.
//  Copyright (c) 2013 Shadyproject. All rights reserved.
//

#import "SPListing2point1View.h"

@implementation SPListing2point1View

- (void)drawRect:(NSRect)dirtyRect
{
    CGContextRef context = [[NSGraphicsContext currentContext] graphicsPort];
    CGRect ourRect;
    
    CGContextSetRGBFillColor(context, 1.0, 0.0, 0.0, 1.0);
    
    ourRect.origin.x = ourRect.origin.y = 20.0;
    ourRect.size.width = 130.0;
    ourRect.size.height = 100.0;
    
    CGContextFillRect(context, ourRect);
    
    [self setNeedsDisplay:YES];
}

@end
