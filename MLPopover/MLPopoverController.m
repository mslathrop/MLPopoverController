//
//  MLPopoverController.m
//  MLPopover
//
//  Created by Matthew Lathrop on 2/16/14.
//  Copyright (c) 2014 Matt Lathrop. All rights reserved.
//

#import "MLPopoverController.h"

#import "MLPopoverContentController.h"
#import "MLPopoverItem.h"
#import "WYPopoverController_Protected.h"

@implementation MLPopoverController

- (instancetype)initWithMLPopoverItems:(NSArray *)popoverItems {
    
    return [self initWithMLPopoverItems:popoverItems sizeToFit:YES];
    
}

- (instancetype)initWithMLPopoverItems:(NSArray *)popoverItems sizeToFit:(BOOL)sizeToFit {
    
    MLPopoverContentController *contentController = [[MLPopoverContentController alloc] initWithPopoverItems:popoverItems];
    
    self = [super initWithContentViewController:contentController];
    
    if (self)
    {
        if (sizeToFit) {
            [self sizePopoverContentToFitPopoverItems:popoverItems];
        }
    }
    
    return self;
    
}

- (void)sizePopoverContentToFitPopoverItems:(NSArray *)popoverItems {
    
    float maxWidth = 0.0f;
    float height = 0.0f;
    
    if (popoverItems) {
        for (MLPopoverItem *popoverItem in popoverItems) {
            
            // left margin
            float width = popoverItem.margin;
            
            // image view
            if (popoverItem.image) {
                width += popoverItem.imageViewWidth;
                width += popoverItem.margin;
            }
            
            // label
            if (popoverItem.text) {
                NSDictionary *stringAttributes = [NSDictionary dictionaryWithObject:[UIFont preferredFontForTextStyle:UIFontTextStyleBody] forKey: NSFontAttributeName];
                CGRect frame = CGRectIntegral([popoverItem.text
                                               boundingRectWithSize:CGSizeMake(FLT_MAX, FLT_MAX)
                                               options:NSStringDrawingUsesLineFragmentOrigin
                                               attributes:stringAttributes
                                               context:nil]);
                width += frame.size.width;
            }
            
            // right margin
            width += popoverItem.margin;
            
            if (width > maxWidth) {
                maxWidth = width;
            }
            
            height += 44.0f;
        }
    }
    
    self.popoverContentSize = CGSizeMake(ceilf(maxWidth), ceilf(height));
    
}

@end
