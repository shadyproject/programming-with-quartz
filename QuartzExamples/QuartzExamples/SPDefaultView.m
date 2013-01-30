//
//  SPDefaultView.m
//  QuartzExamples
//
//  Created by Christopher Martin on 1/29/13.
//  Copyright (c) 2013 Shadyproject. All rights reserved.
//

#import "SPDefaultView.h"

@implementation SPDefaultView

- (void)drawRect:(NSRect)dirtyRect
{
    NSRect bounds = [self bounds];
    
    NSString *str = @"Select a listing to view";
    
    NSFont *fnt = [NSFont fontWithName:@"Helvetica" size:24.0];
    
    NSDictionary *attrs =[NSDictionary dictionaryWithObjects:[NSArray arrayWithObject:fnt] forKeys:[NSArray arrayWithObject:NSFontAttributeName]];
    
    NSSize textSize = [str sizeWithAttributes:attrs];
    
    NSRect textRect;
    
    textRect.size = textSize;
    textRect.origin = NSMakePoint(bounds.size.width/2-textSize.width/2, bounds.size.height/2-textSize.height/2);
   
    [str drawAtPoint:textRect.origin withAttributes:attrs];
    
}

@end
