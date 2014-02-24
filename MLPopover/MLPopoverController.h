//
//  MLPopoverController.h
//  MLPopover
//
//  Created by Matthew Lathrop on 2/16/14.
//  Copyright (c) 2014 Matt Lathrop. All rights reserved.
//

#import "WYPopoverController.h"

@class MLPopoverItem;

@interface MLPopoverController : WYPopoverController

- (instancetype)initWithMLPopoverItems:(NSArray *)popoverItems;

- (void)replaceItemAtIndex:(NSInteger)index withPopoverItem:(MLPopoverItem *)popoverItem;

@end
