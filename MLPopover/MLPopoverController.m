//
//  MLPopoverController.m
//  MLPopover
//
//  Created by Matthew Lathrop on 2/16/14.
//  Copyright (c) 2014 AppBrew LLC. All rights reserved.
//

#import "MLPopoverController.h"

#import "MLPopoverContentController.h"
#import "WYPopoverController_Protected.h"

@implementation MLPopoverController

- (instancetype)initWithMLPopoverItems:(NSArray *)popoverItems {
    
    MLPopoverContentController *contentController = [[MLPopoverContentController alloc] initWithPopoverItems:popoverItems];
    
    self = [super initWithContentViewController:contentController];
    
    if (self)
    {
        
    }
    
    return self;
    
}

@end
