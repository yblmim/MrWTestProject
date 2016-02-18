//
//  WGradientView.m
//  TestProject
//
//  Created by varicom on 16/2/16.
//  Copyright © 2016年 Mouwenbin. All rights reserved.
//

#import "WGradientView.h"

@implementation WGradientView

// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    CGContextRef currentContext = UIGraphicsGetCurrentContext();
    CGContextSaveGState(currentContext);
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    UIColor *startColor = [UIColor orangeColor];
    CGFloat *startColorComponents = (CGFloat *)CGColorGetComponents([startColor CGColor]);
    UIColor *endColor = [UIColor blueColor];
    CGFloat *endColorComponents = (CGFloat *)CGColorGetComponents([endColor CGColor]);
    CGFloat colorComponents[8] = {startColorComponents[0], startColorComponents[1], startColorComponents[2], startColorComponents[3], endColorComponents[0], endColorComponents[1], endColorComponents[2], endColorComponents[3]};
    CGFloat colorIndices[2] = {0.0f, 1.0f};
    CGGradientRef gradient = CGGradientCreateWithColorComponents(colorSpace, (const CGFloat *)&colorComponents, (const CGFloat *)&colorIndices, 2) ;
    CGColorSpaceRelease(colorSpace);
    CGPoint startPoint, endPoint;
    startPoint = CGPointMake(0, [UIScreen mainScreen].bounds.size.width/2);
    endPoint = CGPointMake([UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.width/2 );
//    CGContextDrawLinearGradient(currentContext, gradient, startPoint, endPoint, kCGGradientDrawsAfterEndLocation | kCGGradientDrawsBeforeStartLocation);
    CGContextDrawLinearGradient(currentContext, gradient, startPoint, endPoint, 0);
    CGGradientRelease(gradient);
    CGContextRestoreGState(currentContext);
}


@end
