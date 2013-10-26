//
//  ViewController.m
//  NSCodingPro
//
//  Created by LunaJin on 13-10-10.
//  Copyright (c) 2013年 LunaJin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize useList;
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.useList = [[list alloc]init];
    self.useList.theNewModel = [[Model alloc]init];
    self.useList.theNewModel.PeopelName = @"赵大";
    self.useList.theNewModel.RestaurantName = @"KFC";
    self.useList.theNewModel.MealName = @"Hotdog";
    self.useList.theNewModel.MealPrice = @"10.00";
    [self.useList inittheList];
    [self.useList addModelInfo];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
