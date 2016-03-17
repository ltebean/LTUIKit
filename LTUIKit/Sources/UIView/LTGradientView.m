//
//  LTGradientView.m
//  LTUIKit
//
//  Created by ltebean on 16/3/17.
//  Copyright © 2016年 ltebean. All rights reserved.
//

#import "LTGradientView.h"

@interface GradientView()
@property (nonatomic, strong) CAGradientLayer *gradientLayer;
@end

@implementation GradientView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setup];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setup];
    }
    return self;
}

- (void)setTopColor:(UIColor *)topColor
{
    _topColor = topColor;
    [self updateColors];
}

- (void)setBottomColor:(UIColor *)bottomColor
{
    _bottomColor = bottomColor;
    [self updateColors];
}

- (void)setup
{
    self.backgroundColor = [UIColor clearColor];
    self.gradientLayer = [CAGradientLayer layer];
    self.gradientLayer.frame = self.bounds;
    self.gradientLayer.locations = @[@(0), @(1)];
    [self.layer insertSublayer:self.gradientLayer atIndex:0];
}

- (void)updateColors
{
    if (self.topColor && self.bottomColor) {
        self.gradientLayer.colors = @[(id)self.topColor.CGColor, (id)self.bottomColor.CGColor];
    }
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    self.gradientLayer.frame = self.bounds;
}

@end
