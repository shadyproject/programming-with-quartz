//
//  SPQuartzExampleView.m
//  QuartzExamples
//
//  Created by Christopher Martin on 1/28/13.
//  Copyright (c) 2013 Shadyproject. All rights reserved.
//

#import "SPQuartzExampleView.h"

@implementation SPQuartzExampleView

#pragma mark -
#pragma mark Overrides

- (void)drawRect:(NSRect)dirtyRect
{
}

#pragma mark -
#pragma mark Quartz Examples

//Listing 2.1
- (void)drawSimpleRect
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

//Listing 2.2
- (void) drawStrokedRect
{
    CGContextRef context = [[NSGraphicsContext currentContext] graphicsPort];
    CGRect ourRect;
    
    CGContextSetRGBStrokeColor(context, 0.482, 0.62, 0.871, 1.0);
    
    ourRect.origin.x = ourRect.origin.y = 20.0;
    ourRect.size.width = 130.0;
    ourRect.size.height = 100.0;
    
    CGContextStrokeRectWithWidth(context, ourRect, 3.0);
}

//Listing 2.3
- (void)drawStrokedAndFilledRect
{
    CGContextRef context = [[NSGraphicsContext currentContext] graphicsPort];
    CGRect ourRect = {{20.0, 220.0}, {130.0, 100.0}};
    
    //First Rect
    CGContextSetRGBFillColor(context, 0.482, 0.62, 0.871, 1.0);
    CGContextSetRGBStrokeColor(context, 0.404, 0.808, 0.239, 1.0);
    CGContextFillRect(context, ourRect);
    
    //second rect
    ourRect.origin.x += 200.0;
    CGContextStrokeRectWithWidth(context, ourRect, 10.0);
    
    //third rect, fill then stroke
    ourRect.origin.x -= 200.0;
    ourRect.origin.y -= 200.0;
    CGContextFillRect(context, ourRect);
    CGContextStrokeRectWithWidth(context, ourRect, 10.0);
    
    //fourth rect, stroke then fill
    ourRect.origin.x += 200.0;
    CGContextStrokeRectWithWidth(context, ourRect, 10.0);
    CGContextFillRect(context, ourRect);
    
    [self setNeedsDisplay:YES];
}
@end
