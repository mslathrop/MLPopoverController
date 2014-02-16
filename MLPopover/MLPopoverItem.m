//
//  MLPopoverItem.m
//  MLPopover
//
//  Created by Matthew Lathrop on 2/16/14.
//  Copyright (c) 2014 Matt Lathrop. All rights reserved.
//

#import "MLPopoverItem.h"

#define kHeightDefault 44.0f
#define kMarginDefault 10.0f
#define kImageViewWidthDefault 20.0f

@implementation MLPopoverItem

- (instancetype)initWithText:(NSString *)text
                       image:(UIImage *)image
                      action:(MLPopoverItemAction)action {
    
    self = [super init];
    
    if (self)
    {
        _text = text;
        _image = image;
        _action = action;
        _height = 44.0f;
        _margin = 10.0f;
        _imageViewWidth = kImageViewWidthDefault;
    }
    
    return self;
    
}

- (instancetype)initWithText:(NSString *)text
                       image:(UIImage *)image
                      action:(MLPopoverItemAction)action
                      height:(CGFloat)height
                      margin:(CGFloat)margin {
    
    self = [super init];
    
    if (self)
    {
        _text = text;
        _image = image;
        _action = action;
        _height = height;
        _margin = margin;
        _imageViewWidth = kImageViewWidthDefault;
    }
    
    return self;
    
}

@end
