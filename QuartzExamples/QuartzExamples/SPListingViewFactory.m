//
//  SPQuartzExampleView.m
//  QuartzExamples
//
//  Created by Christopher Martin on 1/28/13.
//  Copyright (c) 2013 Shadyproject. All rights reserved.
//

#import "SPListingViewFactory.h"

@implementation SPListingViewFactory

+ (NSView *)viewForTag:(NSUInteger)tag inRect:(NSRect)rect
{
    //thes should all be consts or something but ld is braindead
    switch (tag) {
        case 1:
            return [[SPListing2point1View alloc] initWithFrame:rect];
            break;
            
        case 2:
            return [[SPListing2point2View alloc] initWithFrame:rect];
            break;
            
        case 3:
            return [[SPListing2point3View alloc] initWithFrame:rect];
            break;
            
        default:
            NSLog(@"I don't know how to do that");
            return [[SPDefaultView alloc] initWithFrame:rect];
            break;
    }
}
@end
