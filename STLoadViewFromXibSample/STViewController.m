//
//  STViewController.m
//  STLoadViewFromXibSample
//
//  Created by EIMEI on 2013/02/11.
//  Copyright (c) 2013年 stack3. All rights reserved.
//

#import "STViewController.h"
#import "STCustomView.h"
#import "UIView+ST.h"

@implementation STViewController {
    __weak STCustomView *_customView;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"View from Xib";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    CGRect bounds = self.view.bounds;
    
    self.view.backgroundColor = [UIColor grayColor];
    
    STCustomView *customView = [STCustomView loadFromNib];
    _customView = customView;
    CGRect customViewFrame;
    customViewFrame.origin.x = 50;
    customViewFrame.origin.y = 50;
    customViewFrame.size.width = bounds.size.width - 50*2;
    customViewFrame.size.height = bounds.size.height - 50*2;
    _customView.frame = customViewFrame;
    _customView.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;
    [self.view addSubview:_customView];
}

- (BOOL)shouldAutorotate
{
    return YES;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskAll;
}

@end
