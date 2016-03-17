//
//  LTXibBasedView.m
//  LTUIKit
//
//  Created by ltebean on 16/3/17.
//  Copyright © 2016年 ltebean. All rights reserved.
//

#import "XibBasedView.h"

@implementation XibBasedView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self load];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self load];
    }
    return self;
}


- (void)load
{
    NSLog(@"%@", NSStringFromClass([self class]));
    UINib *nib = [UINib nibWithNibName:NSStringFromClass([self class]) bundle:[NSBundle bundleForClass:[self class]]];
    UIView *view = [nib instantiateWithOwner:self options:nil].lastObject;
    view.frame = self.bounds;
    view.autoresizingMask = UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleWidth;
    view.translatesAutoresizingMaskIntoConstraints = YES;
    [self addSubview:view];
}
@end
