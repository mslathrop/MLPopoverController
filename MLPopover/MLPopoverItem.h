//
//  MLPopoverItem.h
//  MLPopover
//
//  Created by Matthew Lathrop on 2/16/14.
//  Copyright (c) 2014 Matt Lathrop. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^MLPopoverItemAction)();

@interface MLPopoverItem : NSObject

@property (nonatomic, strong) NSString *text;
@property (nonatomic, strong) UIImage *image;
@property (nonatomic, strong) MLPopoverItemAction action;
@property CGFloat margin;
@property CGFloat imageViewWidth;

- (instancetype)initWithText:(NSString *)text
                       image:(UIImage *)image
                      action:(MLPopoverItemAction)action;

- (instancetype)initWithText:(NSString *)text
                       image:(UIImage *)image
                      action:(MLPopoverItemAction)action
                      margin:(CGFloat)margin;

@end
