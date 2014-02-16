//
//  MLPopoverTableViewCell.h
//  MLPopover
//
//  Created by Matthew Lathrop on 2/16/14.
//  Copyright (c) 2014 Matt Lathrop. All rights reserved.
//

@import Foundation;
@import UIKit;

@class MLPopoverItem;

@interface MLPopoverTableViewCell : UITableViewCell

@property (nonatomic, strong) MLPopoverItem *popoverItem;

@end
