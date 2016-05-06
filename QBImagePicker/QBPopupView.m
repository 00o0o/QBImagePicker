//
//  QBPupopView.m
//  QBImagePicker
//
//  Created by Clover on 5/6/16.
//  Copyright © 2016 Katsuma Tanaka. All rights reserved.
//

#import "QBPopupView.h"

@implementation QBPopupView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    
    if(self) {
        self.backgroundColor = [UIColor clearColor];
        self.bodyColor = [UIColor whiteColor];
        
        self.cornerRadius = 5.0;
        self.arrowHeight = 8.0;
        self.arrowPosition = QBPopupViewArrowPositionCenter;
    }
    
    return self;
}

- (void)drawRect:(CGRect)rect {
    CGFloat arrowX = self.frame.size.width / 2;
    if(self.arrowPosition == QBPopupViewArrowPositionLeft) {
        arrowX = 20.0;
    }else if(self.arrowPosition == QBPopupViewArrowPositionRight) {
        arrowX = self.frame.size.width - 20.0;
    }
    
    [self.bodyColor setFill];
    
    UIBezierPath *path = [UIBezierPath new];
    [path moveToPoint:CGPointMake(arrowX, 0)];
    [path addLineToPoint:CGPointMake(arrowX - self.arrowHeight * 0.9, self.arrowHeight)];
    [path addLineToPoint:CGPointMake(self.cornerRadius, self.arrowHeight)];
    [path addQuadCurveToPoint:CGPointMake(0, self.arrowHeight + self.cornerRadius) controlPoint:CGPointMake(0, self.arrowHeight)];
    [path addLineToPoint:CGPointMake(0, CGRectGetHeight(self.frame) - self.cornerRadius)];
    [path addQuadCurveToPoint:CGPointMake(self.cornerRadius, CGRectGetHeight(self.frame)) controlPoint:CGPointMake(0, CGRectGetHeight(self.frame))];
    [path addLineToPoint:CGPointMake(CGRectGetWidth(self.frame) - self.cornerRadius, CGRectGetHeight(self.frame))];
    [path addQuadCurveToPoint:CGPointMake(CGRectGetWidth(self.frame), CGRectGetHeight(self.frame) - self.cornerRadius) controlPoint:CGPointMake(CGRectGetWidth(self.frame), CGRectGetHeight(self.frame))];
    [path addLineToPoint:CGPointMake(CGRectGetWidth(self.frame), self.arrowHeight + self.cornerRadius)];
    [path addQuadCurveToPoint:CGPointMake(CGRectGetWidth(self.frame) - self.cornerRadius, self.arrowHeight) controlPoint:CGPointMake(CGRectGetWidth(self.frame), self.arrowHeight)];
    [path addLineToPoint:CGPointMake(arrowX + self.arrowHeight * 0.9, self.arrowHeight)];
    
    [path closePath];
    [path fill];
}
@end
