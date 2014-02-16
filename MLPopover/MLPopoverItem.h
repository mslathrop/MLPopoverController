//
//  MLPopoverItem.h
//  MLPopover
//
//  Created by Matthew Lathrop on 2/16/14.
//  Copyright (c) 2014 AppBrew LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^MLPopoverItemAction)();

@interface MLPopoverItem : NSObject

@property (nonatomic, strong) NSString *text;
@property (nonatomic, strong) UIImage *image;
@property (nonatomic, strong) MLPopoverItemAction action;

- (instancetype)initWithText:(NSString *)text Image:(UIImage *)image Action:(MLPopoverItemAction)action;

@end
