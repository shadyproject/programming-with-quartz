//
//  SPQuartzExampleView.h
//  QuartzExamples
//
//  Created by Christopher Martin on 1/28/13.
//  Copyright (c) 2013 Shadyproject. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "SPDefaultView.h"
#import "SPListing2point1View.h"
#import "SPListing2point2View.h"
#import "SPListing2point3View.h"


@interface SPListingViewFactory : NSObject

+ (NSView *)viewForTag:(NSUInteger)tag inRect:(NSRect)rect;

@end
