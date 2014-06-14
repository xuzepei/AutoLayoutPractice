//
//  RCMainTableViewController.m
//  AutoLayoutPractice
//
//  Created by xuzepei on 6/11/14.
//  Copyright (c) 2014 TapGuilt Inc. All rights reserved.
//

#import "RCMainTableViewController.h"
#import "RCViewController.h"

@interface RCMainTableViewController ()

@end

@implementation RCMainTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    self.navigationController.navigationBar.translucent = NO;
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
    return 2;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellId" forIndexPath:indexPath];
    
    if(nil == cell)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cellId"];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    
    NSString* title = @"";
    if(0 == indexPath.row)
    {
        title = @"Basic";
    }
    else if(1 == indexPath.row)
    {
        title = @"Constraints";
    }
    
    cell.textLabel.text = title;
    
    return cell;
}


#pragma mark - Table view delegate

// In a xib-based application, navigation from a table can be handled in -tableView:didSelectRowAtIndexPath:
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(0 == indexPath.row)
    {
        [self performSegueWithIdentifier:@"to_basic" sender:nil];
    }
    else if(1 == indexPath.row)
    {
        //在storyboard工程里使用普通的xib,也是可以的
//        RCViewController* temp = [[RCViewController alloc] initWithNibName:nil bundle:nil];
//        temp.view.backgroundColor = [UIColor redColor];
//        [self.navigationController pushViewController:temp animated:YES];
        
        [self performSegueWithIdentifier:@"to_constraints" sender:nil];
    }
}


@end
