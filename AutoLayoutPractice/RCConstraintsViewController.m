//
//  RCConstraintsViewController.m
//  AutoLayoutPractice
//
//  Created by xuzepei on 6/11/14.
//  Copyright (c) 2014 TapGuilt Inc. All rights reserved.
//

#import "RCConstraintsViewController.h"

@interface RCConstraintsViewController ()

@end

@implementation RCConstraintsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
    self.backButton.backgroundColor = [UIColor redColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickedButton:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
