//
//  LTOnePixelSeperator.m
//  LTUIKit
//
//  Created by ltebean on 16/3/17.
//  Copyright © 2016年 ltebean. All rights reserved.
//

#import "OnePixelSeperator.h"

@implementation OnePixelSeperator
- (void)setLineColor:(UIColor *)lineColor
{
    _lineColor = lineColor;
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect
{
    UIBezierPath *path = [UIBezierPath bezierPathWithRect:CGRectMake(0, 0, rect.size.width, 0.5)];
    [self.lineColor setFill];
    [path fill];
}
@end
