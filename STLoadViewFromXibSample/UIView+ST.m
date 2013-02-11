//
//  UIView+ST.m
//  STLoadViewFromXibSample
//
//  Created by EIMEI on 2013/02/11.
//  Copyright (c) 2013年 stack3. All rights reserved.
//

#import "UIView+ST.h"

@implementation UIView (ST)

+ (id)loadFromNib
{
    NSString *nibName = NSStringFromClass([self class]);
    UINib *nib = [UINib nibWithNibName:nibName bundle:nil];
    return [[nib instantiateWithOwner:nil options:nil] objectAtIndex:0];
}

+ (id)loadFromIdiomNib
{
    NSString *nibName = NSStringFromClass([self class]);
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        nibName = [nibName stringByAppendingString:@"_iPhone"];
    } else {
        nibName = [nibName stringByAppendingString:@"_iPad"];
    }
    UINib *nib = [UINib nibWithNibName:nibName bundle:nil];
    return [[nib instantiateWithOwner:nil options:nil] objectAtIndex:0];
}

@end
