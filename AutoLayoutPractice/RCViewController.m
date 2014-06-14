//
//  RCViewController.m
//  AutoLayoutPractice
//
//  Created by xuzepei on 6/10/14.
//  Copyright (c) 2014 TapGuilt Inc. All rights reserved.
//

#import "RCViewController.h"

@interface RCViewController ()

@end

@implementation RCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    [super willRotateToInterfaceOrientation:toInterfaceOrientation duration:duration];
    
//    if(UIInterfaceOrientationLandscapeLeft == toInterfaceOrientation || UIInterfaceOrientationLandscapeRight == toInterfaceOrientation)
//    {
//        //...
//    }
}

- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation
{
    [super didRotateFromInterfaceOrientation:fromInterfaceOrientation];
    
    NSLog(@"topLeftViewFrame:%@",NSStringFromCGRect(self.topLeftView.frame));
    NSLog(@"topRightViewFrame:%@",NSStringFromCGRect(self.topRightView.frame));
    NSLog(@"bottomViewFrame:%@",NSStringFromCGRect(self.bottomView.frame));
}

@end
