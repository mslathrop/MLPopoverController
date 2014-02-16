//
//  MLPopoverTableViewCell.m
//  MLPopover
//
//  Created by Matthew Lathrop on 2/16/14.
//  Copyright (c) 2014 Matt Lathrop. All rights reserved.
//

#import "MLPopoverTableViewCell.h"

#import "MLPopoverItem.h"

#define kMarginSize 10

@interface MLPopoverTableViewCell ()

@property (nonatomic, strong) UIImageView *cellImageView;
@property (nonatomic, strong) UILabel *cellLabel;

@end

@implementation MLPopoverTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        
        // create the ImageView
        self.cellImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 0, 0)];
        [self.contentView addSubview:self.cellImageView];
        
        // create the label
        self.cellLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 0, 0)];
        [self.contentView addSubview:self.cellLabel];
        
    }
    return self;
}

- (void)setPopoverItem:(MLPopoverItem *)popoverItem {
    
    _popoverItem = popoverItem;
    _cellImageView.image = _popoverItem.image;
    _cellLabel.text = _popoverItem.text;
    [_cellLabel sizeToFit];
    
    [self layoutSubviews];
    
}

- (void)layoutSubviews {
    
    [super layoutSubviews];
    
    float xPos = self.popoverItem.margin;
    float yPos = 10.0f;
    
    if (_cellImageView.image) {
        _cellImageView.frame = CGRectMake(xPos, yPos, self.popoverItem.imageViewWidth, self.popoverItem.imageViewWidth);
        xPos += _cellImageView.frame.size.width + self.popoverItem.margin;
    }
    
    if (_cellLabel.text) {
        CGRect frame = _cellLabel.frame;
        frame.origin.x = xPos;
        frame.origin.y = yPos;
        _cellLabel.frame = frame;
    }
    
}

- (float)calculateCellWidth {
    
    float ret = 0.0f;
    
    if (_cellImageView.image) {
        ret = kMarginSize * 3 + _cellImageView.frame.size.width + _cellLabel.frame.size.width;
    }
    else {
        ret = kMarginSize * 3 + _cellLabel.frame.size.width;
    }
    
    return ret;
}

@end
