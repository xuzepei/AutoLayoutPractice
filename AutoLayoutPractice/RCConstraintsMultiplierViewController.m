//
//  RCConstraintsMultiplierViewController.m
//  AutoLayoutPractice
//
//  Created by xuzepei on 6/21/14.
//  Copyright (c) 2014 TapGuilt Inc. All rights reserved.
//

#import "RCConstraintsMultiplierViewController.h"

@interface RCConstraintsMultiplierViewController ()

@end

@implementation RCConstraintsMultiplierViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)loadView {
    
    [super loadView];
    
    UIView *centerView = [[UIView alloc] init];
    [centerView setTranslatesAutoresizingMaskIntoConstraints:NO];
    centerView.backgroundColor = [UIColor redColor];
    [self.view addSubview:centerView];
    
    // Width constraint, half of parent view width
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:centerView
                                                          attribute:NSLayoutAttributeWidth
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeWidth
                                                         multiplier:0.5
                                                           constant:0]];
    
    // Height constraint, half of parent view height
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:centerView
                                                          attribute:NSLayoutAttributeHeight
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeHeight
                                                         multiplier:1.0
                                                           constant:0]];
    
    // Center horizontally
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:centerView
                                                          attribute:NSLayoutAttributeCenterX
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterX
                                                         multiplier:1.0
                                                           constant:0.0]];
    
    // Center vertically
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:centerView
                                                          attribute:NSLayoutAttributeCenterY
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterY
                                                         multiplier:1.0
                                                           constant:0.0]];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    //red view
    NSLayoutConstraint* constraint = [NSLayoutConstraint constraintWithItem:self.redView
                                                                  attribute:NSLayoutAttributeHeight
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:self.view
                                                                  attribute:NSLayoutAttributeHeight
                                                                 multiplier: self.redView.bounds.size.height/ self.view.bounds.size.height
                                                                   constant:0];
    constraint.priority = 996;
    [self.view addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:self.redView
                                              attribute:NSLayoutAttributeHeight
                                              relatedBy:NSLayoutRelationGreaterThanOrEqual
                                                 toItem:self.greenView
                                              attribute:NSLayoutAttributeHeight
                                             multiplier:1.0
                                               constant:10];
    [self.view addConstraint:constraint];
    
    
    //green view
    constraint = [NSLayoutConstraint constraintWithItem:self.greenView
                                              attribute:NSLayoutAttributeHeight
                                              relatedBy:NSLayoutRelationGreaterThanOrEqual
                                                 toItem:nil
                                              attribute:NSLayoutAttributeHeight
                                             multiplier:1.0
                                               constant:30];
    constraint.priority = 998;
    [self.view addConstraint:constraint];
    
    constraint = [NSLayoutConstraint constraintWithItem:self.greenView
                                                                  attribute:NSLayoutAttributeHeight
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:self.view
                                                                  attribute:NSLayoutAttributeHeight
                                                                 multiplier: self.greenView.bounds.size.height/ self.view.bounds.size.height
                                                                   constant:0];
    constraint.priority = 997;
    [self.view addConstraint:constraint];
    
    
    //blue view
    constraint = [NSLayoutConstraint constraintWithItem:self.blueView
                                              attribute:NSLayoutAttributeHeight
                                              relatedBy:NSLayoutRelationEqual
                                                 toItem:self.view
                                              attribute:NSLayoutAttributeHeight
                                             multiplier: self.blueView.bounds.size.height/ self.view.bounds.size.height
                                               constant:0];
    [self.view addConstraint:constraint];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    self.yellowView = nil;
    self.purpleButton = nil;
}

@end
