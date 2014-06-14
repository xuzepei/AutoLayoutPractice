//
//  RCViewController.h
//  AutoLayoutPractice
//
//  Created by xuzepei on 6/10/14.
//  Copyright (c) 2014 TapGuilt Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RCViewController : UIViewController

@property(nonatomic,weak)IBOutlet UIView* topLeftView;
@property(nonatomic,weak)IBOutlet UIView* topRightView;
@property(nonatomic,weak)IBOutlet UIView* bottomView;

@end
