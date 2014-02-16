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
                                                           image:[UIImage imageNamed:@"alert-circled"]
                                                          action:^{
                                                              UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Item One Selected"
                                                                                                                  message:nil
                                                                                                                 delegate:nil
                                                                                                        cancelButtonTitle:@"Okay"
                                                                                                        otherButtonTitles:nil];
                                                              [alertView show];
                                                          }];
    
    MLPopoverItem *itemTwo = [[MLPopoverItem alloc] initWithText:@"Item Two"
                                                           image:[UIImage imageNamed:@"android-add-contact"]
                                                          action:^{
                                                              UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Item Two Selected"
                                                                                                                  message:nil
                                                                                                                 delegate:nil
                                                                                                        cancelButtonTitle:@"Okay"
                                                                                                        otherButtonTitles:nil];
                                                              [alertView show];
                                                          }];
    
    MLPopoverItem *itemThree = [[MLPopoverItem alloc] initWithText:@"Item Three"
                                                             image:[UIImage imageNamed:@"checkmark-circled"]
                                                            action:^{
                                                                UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Item Three Selected"
                                                                                                                    message:nil
                                                                                                                   delegate:nil
                                                                                                          cancelButtonTitle:@"Okay"
                                                                                                          otherButtonTitles:nil];
                                                                [alertView show];
                                                            }];
    
    _popover = [[MLPopoverController alloc] initWithMLPopoverItems:@[itemOne, itemTwo, itemThree]];
    _popover.delegate = self;
    [_popover presentPopoverFromBarButtonItem:_actionButton permittedArrowDirections:WYPopoverArrowDirectionUp animated:YES];
}

@end
