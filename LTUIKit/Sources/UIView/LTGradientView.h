//
//  LTGradientView.h
//  LTUIKit
//
//  Created by ltebean on 16/3/17.
//  Copyright © 2016年 ltebean. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface GradientView : UIView
@property (nonatomic, strong) IBInspectable UIColor *topColor;
@property (nonatomic, strong) IBInspectable UIColor *bottomColor;
@end
