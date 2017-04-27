//  Created by dasdom on 04/04/2017.
//  Copyright © 2017 dasdom. All rights reserved.
//

#import "UIView+AutoLayout.h"

@implementation UIView (AutoLayout)

- (NSArray<NSLayoutConstraint *> *)pinTo:(UIView *)otherView {
    return [self pinTo:otherView insets:UIEdgeInsetsMake(0, 0, 0, 0)];
}

- (NSArray<NSLayoutConstraint *> *)pinTo:(UIView *)otherView activate:(BOOL)activate {
    return [self pinTo:otherView insets:UIEdgeInsetsMake(0, 0, 0, 0) activate:activate];
}

- (NSArray<NSLayoutConstraint *> *)pinTo:(UIView *)otherView insets:(UIEdgeInsets)insets {
    return [self pinTo:otherView insets:insets activate:true];
}

- (NSArray<NSLayoutConstraint *> *)pinTo:(UIView *)otherView insets:(UIEdgeInsets)insets activate:(BOOL)activate {
    NSAssert(self.superview, @"View needs a superview.");
    
    self.translatesAutoresizingMaskIntoConstraints = false;
    
    if (!otherView) {
        otherView = self.superview;
    }
    
    NSArray *layoutConstraints = @[
                                   [self.leadingAnchor constraintEqualToAnchor:otherView.leadingAnchor constant:insets.left],
                                   [self.trailingAnchor constraintEqualToAnchor:otherView.trailingAnchor constant:-insets.right],
                                   [self.topAnchor constraintEqualToAnchor:otherView.topAnchor constant:insets.top],
                                   [self.bottomAnchor constraintEqualToAnchor:otherView.bottomAnchor constant:-insets.bottom]
                                   ];
    
    if (activate) {
        [NSLayoutConstraint activateConstraints:layoutConstraints];
    }
    
    return layoutConstraints;
}

- (NSArray<NSLayoutConstraint *> *)alignWith:(UIView *)otherView alongAxis:(UILayoutConstraintAxis)axis {
    return [self alignWith:otherView alongAxis:axis activate:true];
}

- (NSArray<NSLayoutConstraint *> *)alignWith:(UIView *)otherView alongAxis:(UILayoutConstraintAxis)axis activate:(BOOL)activate {
    
    NSAssert(self.superview, @"View needs a superview.");
    
    self.translatesAutoresizingMaskIntoConstraints = false;
    
    if (!otherView) {
        otherView = self.superview;
    }
    
    NSArray *layoutConstraints = nil;
    switch (axis) {
        case UILayoutConstraintAxisVertical:
            layoutConstraints = @[
                                  [self.leadingAnchor constraintEqualToAnchor:otherView.leadingAnchor],
                                  [self.trailingAnchor constraintEqualToAnchor:otherView.trailingAnchor]
                                  ];
            break;
            
        default:
            layoutConstraints = @[
                                  [self.topAnchor constraintEqualToAnchor:otherView.topAnchor],
                                  [self.bottomAnchor constraintEqualToAnchor:otherView.bottomAnchor]
                                  ];
            break;
    }
    
    if (activate) {
        [NSLayoutConstraint activateConstraints:layoutConstraints];
    }
    
    return layoutConstraints;
}

- (NSArray<NSLayoutConstraint *> *)setSize:(CGSize)size {
    return [self setSize:size activate:true];
}

- (NSArray<NSLayoutConstraint *> *)setSize:(CGSize)size activate:(BOOL)activate {
    NSAssert(self.superview, @"View needs a superview.");
    
    self.translatesAutoresizingMaskIntoConstraints = false;
    
    NSArray *layoutConstraints = @[
                                   [self.widthAnchor constraintEqualToConstant:size.width],
                                   [self.heightAnchor constraintEqualToConstant:size.height]
                                   ];
    
    if (activate) {
        [NSLayoutConstraint activateConstraints:layoutConstraints];
    }
    
    return layoutConstraints;
}

- (NSLayoutConstraint *)setWidth:(CGFloat)width {
    return [self setWidth:width activate:true];
}

- (NSLayoutConstraint *)setWidth:(CGFloat)width activate:(BOOL)activate {
    NSAssert(self.superview, @"View needs a superview.");
    
    self.translatesAutoresizingMaskIntoConstraints = false;
    
    NSLayoutConstraint *layoutConstraint = [self.widthAnchor constraintEqualToConstant:width];
    
    layoutConstraint.active = activate;
    
    return layoutConstraint;
}

- (NSLayoutConstraint *)setHeight:(CGFloat)height {
    return [self setHeight:height activate:true];
}

- (NSLayoutConstraint *)setHeight:(CGFloat)height activate:(BOOL)activate {
    NSAssert(self.superview, @"View needs a superview.");
    
    self.translatesAutoresizingMaskIntoConstraints = false;
    
    NSLayoutConstraint *layoutConstraint = [self.widthAnchor constraintEqualToConstant:height];
    
    layoutConstraint.active = activate;
    
    return layoutConstraint;
}

- (NSArray<NSLayoutConstraint *> *)centerInView:(UIView *)otherView {
    return [self centerInView:otherView offset:CGPointZero];
}

- (NSArray<NSLayoutConstraint *> *)centerInView:(UIView *)otherView activate:(BOOL)activate {
    return [self centerInView:otherView offset:CGPointZero activate:activate];
}

- (NSArray<NSLayoutConstraint *> *)centerInView:(UIView *)otherView offset:(CGPoint)offset {
    return [self centerInView:otherView offset:offset activate:true];
}

- (NSArray<NSLayoutConstraint *> *)centerInView:(UIView *)otherView offset:(CGPoint)offset activate:(BOOL)activate {
    NSAssert(self.superview, @"View needs a superview.");
    
    self.translatesAutoresizingMaskIntoConstraints = false;
    
    if (!otherView) {
        otherView = self.superview;
    }
    
    NSArray *layoutConstraints = @[
                                   [self.centerXAnchor constraintEqualToAnchor:otherView.centerXAnchor constant:offset.x],
                                   [self.centerYAnchor constraintEqualToAnchor:otherView.centerYAnchor constant:offset.y]
                                   ];
    
    if (activate) {
        [NSLayoutConstraint activateConstraints:layoutConstraints];
    }
    
    return layoutConstraints;
}

- (NSArray<NSLayoutConstraint *> *)centerInView:(UIView *)otherView offset:(CGPoint)offset size:(CGSize)size {
    return [self centerInView:otherView offset:offset size:size activate:true];
}

- (NSArray<NSLayoutConstraint *> *)centerInView:(UIView *)otherView offset:(CGPoint)offset size:(CGSize)size activate:(BOOL)activate {
    NSAssert(self.superview, @"View needs a superview.");
    
    self.translatesAutoresizingMaskIntoConstraints = false;
    
    if (!otherView) {
        otherView = self.superview;
    }
    
    NSArray *layoutConstraints = @[
                                   [self.centerXAnchor constraintEqualToAnchor:otherView.centerXAnchor constant:offset.x],
                                   [self.centerYAnchor constraintEqualToAnchor:otherView.centerYAnchor constant:offset.y],
                                   [self.widthAnchor constraintEqualToConstant:size.width],
                                   [self.heightAnchor constraintEqualToConstant:size.height]
                                   ];
    
    if (activate) {
        [NSLayoutConstraint activateConstraints:layoutConstraints];
    }
    
    return layoutConstraints;
}

@end
