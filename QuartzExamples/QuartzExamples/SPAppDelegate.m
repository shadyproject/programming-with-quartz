//
//  SPAppDelegate.m
//  QuartzExamples
//
//  Created by Christopher Martin on 1/27/13.
//  Copyright (c) 2013 Shadyproject. All rights reserved.
//

#import "SPAppDelegate.h"

@implementation SPAppDelegate

@synthesize window, exampleView, exampleMenu;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    [self setupExampleMenu];
}

- (void)setupExampleMenu
{
    //todo do this in a way that doesn't suck... like with bindings and NSInvocations
    [exampleMenu removeAllItems];
    
    NSMenuItem *item;
    item = [[NSMenuItem alloc] initWithTitle:@"--Select Example--" action:NULL keyEquivalent:@""];
    item.tag = 0;
    [exampleMenu.menu addItem:item];
    
    item = [[NSMenuItem alloc] initWithTitle:@"Listing 2.1" action:@selector(menuItemSelected:) keyEquivalent:@""];
    item.tag = kListing2point1;
    [exampleMenu.menu addItem:item];
    
    item = [[NSMenuItem alloc] initWithTitle:@"Listing 2.2" action:@selector(menuItemSelected:) keyEquivalent:@""];
    item.tag = kListing2point2;
    [exampleMenu.menu addItem:item];
    
    item = [[NSMenuItem alloc] initWithTitle:@"Listing 2.3" action:@selector(menuItemSelected:) keyEquivalent:@""];
    item.tag = kListing2point3;
    [exampleMenu.menu addItem:item];
}

- (void)menuItemSelected:(NSMenuItem *)item
{
    //NSMenuItem *item = [exampleMenu selectedItem];
    NSLog(@"Menu item selected %@", item);
}

@end
