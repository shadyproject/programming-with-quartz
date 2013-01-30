//
//  SPAppDelegate.m
//  QuartzExamples
//
//  Created by Christopher Martin on 1/27/13.
//  Copyright (c) 2013 Shadyproject. All rights reserved.
//

#import "SPAppDelegate.h"
#import "SPListingViewFactory.h"

@implementation SPAppDelegate

@synthesize window, exampleView, exampleMenu;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    [self setupExampleMenu];
    
    [self.exampleView addSubview:[SPListingViewFactory viewForTag:0 inRect:self.exampleView.bounds]];
}

- (void)setupExampleMenu
{
    //todo do this in a way that doesn't suck... like with bindings and NSInvocations
    [exampleMenu removeAllItems];
    
    //these tags should all be consts or something but ld is braindead
    //and tells me i have them defined in two places, even if i only have them in 1
    NSMenuItem *item;
    item = [[NSMenuItem alloc] initWithTitle:@"--Select Example--" action:@selector(menuItemSelected:) keyEquivalent:@""];
    item.tag = 0;
    [exampleMenu.menu addItem:item];
    
    item = [[NSMenuItem alloc] initWithTitle:@"Listing 2.1" action:@selector(menuItemSelected:) keyEquivalent:@""];
    item.tag = 1;
    [exampleMenu.menu addItem:item];
    
    item = [[NSMenuItem alloc] initWithTitle:@"Listing 2.2" action:@selector(menuItemSelected:) keyEquivalent:@""];
    item.tag = 2;
    [exampleMenu.menu addItem:item];
    
    item = [[NSMenuItem alloc] initWithTitle:@"Listing 2.3" action:@selector(menuItemSelected:) keyEquivalent:@""];
    item.tag = 3;
    [exampleMenu.menu addItem:item];
}

- (void)menuItemSelected:(NSMenuItem *)item
{
    NSLog(@"Menu item selected %@", item);
    NSUInteger tag = item.tag;
    
     if (exampleView.subviews.count > 0) {
        [[exampleView.subviews objectAtIndex:0] removeFromSuperview];
    }
    
    NSRect rect = [exampleView bounds];
    
    NSView *view = [SPListingViewFactory viewForTag:tag inRect:rect];
   
    [exampleView addSubview:view];
}

@end
