//
//  MLPopoverTableViewController.m
//  Medly
//
//  Created by Matthew Lathrop on 2/16/14.
//  Copyright (c) 2014 Matt Lathrop. All rights reserved.
//

#import "MLPopoverContentController.h"
#import "MLPopoverItem.h"
#import "MLPopoverTableViewCell.h"

@interface MLPopoverContentController ()

@property (nonatomic, strong) NSArray *popoverItems;

@end

@implementation MLPopoverContentController

static NSString *cellIdentifier = @"MLPopoverTableViewCell";

- (instancetype)initWithPopoverItems:(NSArray *)popoverItems {
    
    self = [super init];
    
    if (self)
    {
        [self.tableView registerClass:[MLPopoverTableViewCell class] forCellReuseIdentifier:cellIdentifier];
        _popoverItems = popoverItems;
    }
    
    return self;
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.separatorColor = [UIColor clearColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return _popoverItems.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MLPopoverTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    cell.popoverItem = _popoverItems[indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    MLPopoverTableViewCell *cell = (MLPopoverTableViewCell *)[tableView cellForRowAtIndexPath:indexPath];
    if (cell.popoverItem && cell.popoverItem.action) {
        cell.popoverItem.action();
    }
    
}

@end
