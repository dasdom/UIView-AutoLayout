//
//  View.m
//  AutoLayoutHelperDemo
//
//  Created by dasdom on 04/04/2017.
//  Copyright © 2017 dasdom. All rights reserved.
//

#import "View.h"

#import "UIView+AutoLayout.h"

@implementation View

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        
        UIView *redView = [self viewWithColor:[UIColor redColor]];
        UIView *blueView = [self viewWithColor:[UIColor blueColor]];
        UIView *greenView =[self viewWithColor:[UIColor greenColor]];
        
        self.backgroundColor = [UIColor whiteColor];
        
        [self addSubview:redView];
        [redView addSubview:blueView];
        [blueView addSubview:greenView];
        
        [redView pinTo:nil];
        [blueView pinTo:nil insets:UIEdgeInsetsMake(20, 10, 10, 50)];
        [greenView centerInView:blueView offset:CGPointMake(30, 50) size:CGSizeMake(20, 40)];
    }
    return self;
}

- (UIView *)viewWithColor:(UIColor *)color {
    UIView *view = [UIView new];
    view.backgroundColor = color;
    return view;
}

@end
