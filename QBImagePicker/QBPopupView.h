//
//  QBPupopView.h
//  QBImagePicker
//
//  Created by Clover on 5/6/16.
//  Copyright © 2016 Katsuma Tanaka. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, QBPopupViewArrowPosition) {
    QBPopupViewArrowPositionLeft = 0,
    QBPopupViewArrowPositionCenter,
    QBPopupViewArrowPositionRight
};

@interface QBPopupView : UIView
@property (nonatomic, strong) UIColor *bodyColor;
@property (nonatomic, assign) CGFloat cornerRadius;
@property (nonatomic, assign) CGFloat arrowHeight;
@property (nonatomic, assign) QBPopupViewArrowPosition arrowPosition;

@end
