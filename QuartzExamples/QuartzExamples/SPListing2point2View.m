//
//  SPListing2point2View.m
//  QuartzExamples
//
//  Created by Christopher Martin on 1/29/13.
//  Copyright (c) 2013 Shadyproject. All rights reserved.
//

#import "SPListing2point2View.h"

@implementation SPListing2point2View

- (void)drawRect:(NSRect)dirtyRect
{
    CGContextRef context = [[NSGraphicsContext currentContext] graphicsPort];
    CGRect ourRect;
    
    CGContextSetRGBStrokeColor(context, 0.482, 0.62, 0.871, 1.0);
    
    ourRect.origin.x = ourRect.origin.y = 20.0;
    ourRect.size.width = 130.0;
    ourRect.size.height = 100.0;
    
    CGContextStrokeRectWithWidth(context, ourRect, 3.0);
}
@end
