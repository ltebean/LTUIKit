//
//  LTRoundCornerImageView.m
//  LTUIKit
//
//  Created by ltebean on 16/3/17.
//  Copyright © 2016年 ltebean. All rights reserved.
//

#import "OvalImageView.h"

@implementation OvalImageView

- (void)layoutSubviews
{
    [super layoutSubviews];
    self.layer.cornerRadius = self.bounds.size.height / 2;
    self.clipsToBounds = YES;
}

@end
