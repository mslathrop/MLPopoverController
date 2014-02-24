//
//  MLPopoverTableViewController.h
//  Medly
//
//  Created by Matthew Lathrop on 2/16/14.
//  Copyright (c) 2014 Matt Lathrop. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MLPopoverItem;

@interface MLPopoverContentController : UITableViewController

@property (nonatomic, strong) NSArray *popoverItems;

- (instancetype)initWithPopoverItems:(NSArray *)popoverItems;
- (void)replaceItemAtIndex:(NSInteger)index withPopoverItem:(MLPopoverItem *)popoverItem;

@end
