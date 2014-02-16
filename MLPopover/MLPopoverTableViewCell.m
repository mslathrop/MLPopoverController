//
//  MLPopoverTableViewCell.m
//  MLPopover
//
//  Created by Matthew Lathrop on 2/16/14.
//  Copyright (c) 2014 Matt Lathrop. All rights reserved.
//

#import "MLPopoverTableViewCell.h"

#import "MLPopoverItem.h"

@interface MLPopoverTableViewCell ()

@property int marginSize;
@property (nonatomic, strong) UIImageView *cellImageView;
@property (nonatomic, strong) UILabel *cellLabel;

@end

@implementation MLPopoverTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        
        self.marginSize = 10;
        
        // create the ImageView
        self.cellImageView = [[UIImageView alloc] initWithFrame:CGRectMake(self.marginSize, 10, 20, 20)];
        [self.contentView addSubview:self.cellImageView];
        
        // create the label
        int xPos = self.marginSize + CGRectGetWidth(self.imageView.frame) + self.marginSize;
        self.cellLabel = [[UILabel alloc] initWithFrame:CGRectMake(xPos, 10, self.bounds.size.width - self.marginSize - xPos, 20)];
        [self.contentView addSubview:self.cellLabel];
        
    }
    return self;
}

- (void)setPopoverItem:(MLPopoverItem *)popoverItem {
    
    _popoverItem = popoverItem;
    _cellImageView.image = _popoverItem.image;
    _cellLabel.text = _popoverItem.text;
    
    if (_cellImageView.image) {
        CGRect frame = _cellLabel.frame;
        frame.origin.x = _cellImageView.frame.origin.x + _cellImageView.frame.size.width + _marginSize;
        _cellLabel.frame = frame;
    }
    else {
        CGRect frame = _cellLabel.frame;
        frame.origin.x = _marginSize;
        _cellLabel.frame = frame;
    }
    
}

@end
