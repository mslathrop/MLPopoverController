//
//  MLPopoverItem.m
//  MLPopover
//
//  Created by Matthew Lathrop on 2/16/14.
//  Copyright (c) 2014 Matt Lathrop. All rights reserved.
//

#import "MLPopoverItem.h"

@implementation MLPopoverItem

- (instancetype)initWithText:(NSString *)text Image:(UIImage *)image Action:(MLPopoverItemAction)action {
    
    self = [super init];
    
    if (self)
    {
        _text = text;
        _image = image;
        _action = action;
    }
    
    return self;
    
}

@end
