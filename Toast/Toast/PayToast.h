//
//  PayToast.h
//  Toast
//
//  Created by Bigbang on 15/10/10.
//  Copyright © 2015年 Bigbang. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, PayResult) {
    PaySuccess = 0,
    PayFail,
};

@interface PayToast : UIView

- (instancetype)initWithFrame:(CGRect)frame showMessage:(NSString *)message Result:(PayResult)result time:(CGFloat)showTime;

- (void)show;

- (void)dismiss;

@end
