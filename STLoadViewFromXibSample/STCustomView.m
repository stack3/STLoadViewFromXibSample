//
//  STCutomView.m
//  STLoadViewFromXibSample
//
//  Created by EIMEI on 2013/02/11.
//  Copyright (c) 2013年 stack3. All rights reserved.
//

#import "STCustomView.h"

@implementation STCustomView {
    IBOutlet UILabel *_label;
    IBOutlet UITextField *_textField;
    IBOutlet UIButton *_button;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    _label.textAlignment = NSTextAlignmentCenter;
    _textField.placeholder = @"Please push.";
    [_button addTarget:self action:@selector(buttonDidTap) forControlEvents:UIControlEventTouchUpInside];
}

- (void)buttonDidTap
{
    [[[UIAlertView alloc] initWithTitle:nil
                                message:@"Loaded from xib."
                               delegate:nil
                      cancelButtonTitle:nil
                      otherButtonTitles:@"OK", nil] show];
}

@end
