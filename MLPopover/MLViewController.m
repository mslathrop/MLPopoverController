//
//  MLViewController.m
//  MLPopover
//
//  Created by Matthew Lathrop on 2/16/14.
//  Copyright (c) 2014 Matt Lathrop. All rights reserved.
//

#import "MLViewController.h"

#import "MLPopoverController.h"
#import "MLPopoverItem.h"

@interface MLViewController ()

@property (nonatomic, strong) UIBarButtonItem *actionButton;
@property (nonatomic, strong) MLPopoverController *popover;

@end

@implementation MLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _actionButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAction
                                                                  target:self
                                                                  action:@selector(actionButtonTapped:)];
    self.navigationItem.rightBarButtonItems = @[_actionButton];
}

- (void)actionButtonTapped:(id)sender {
    
    MLPopoverItem *itemOne = [[MLPopoverItem alloc] initWithText:@"Item One"
                                                           Image:[UIImage imageNamed:@"alert-circled"]
                                                          Action:^{
                                                              UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Item One Selected"
                                                                                                                  message:nil
                                                                                                                 delegate:nil
                                                                                                        cancelButtonTitle:@"Okay"
                                                                                                        otherButtonTitles:nil];
                                                              [alertView show];
                                                          }];
    
    MLPopoverItem *itemTwo = [[MLPopoverItem alloc] initWithText:@"Item Two"
                                                           Image:[UIImage imageNamed:@"android-add-contact"]
                                                          Action:^{
                                                              UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Item Two Selected"
                                                                                                                  message:nil
                                                                                                                 delegate:nil
                                                                                                        cancelButtonTitle:@"Okay"
                                                                                                        otherButtonTitles:nil];
                                                              [alertView show];
                                                          }];
    
    MLPopoverItem *itemThree = [[MLPopoverItem alloc] initWithText:@"Item Three"
                                                             Image:[UIImage imageNamed:@"checkmark-circled"]
                                                            Action:^{
                                                                UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Item Three Selected"
                                                                                                                    message:nil
                                                                                                                   delegate:nil
                                                                                                          cancelButtonTitle:@"Okay"
                                                                                                          otherButtonTitles:nil];
                                                                [alertView show];
                                                            }];
    
    _popover = [[MLPopoverController alloc] initWithMLPopoverItems:@[itemOne, itemTwo, itemThree]];
    [_popover setPopoverContentSize:CGSizeMake(200, 340)];
    _popover.delegate = self;
    [_popover presentPopoverFromBarButtonItem:_actionButton permittedArrowDirections:WYPopoverArrowDirectionUp animated:YES];
}

@end
