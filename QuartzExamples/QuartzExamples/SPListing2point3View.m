//
//  SPListin2point3View.m
//  QuartzExamples
//
//  Created by Christopher Martin on 1/29/13.
//  Copyright (c) 2013 Shadyproject. All rights reserved.
//

#import "SPListing2point3View.h"

@implementation SPListing2point3View
 - (void)drawRect:(NSRect)dirtyRect
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
    
}
@end
