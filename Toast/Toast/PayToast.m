//
//  PayToast.m
//  Toast
//
//  Created by Bigbang on 15/10/10.
//  Copyright © 2015年 Bigbang. All rights reserved.
//

#import "PayToast.h"
#import "RightView.h"
#import "ErrorView.h"

@interface PayToast ()

@property (nonatomic, strong) UIView *fatherView;
@property (nonatomic, strong) UILabel *detailLabel;
@property (nonatomic, assign) CGFloat showTime;

@property (nonatomic, strong) RightView *rightView;
@property (nonatomic, strong) ErrorView *errorView;


@end

@implementation PayToast

- (void)dealloc {

    if ( nil != _fatherView )    _fatherView = nil;
    if ( nil != _detailLabel )   _detailLabel = nil;
    if ( nil != _rightView)      _rightView = nil;
    if ( nil != _errorView)      _errorView = nil;

}

- (instancetype)initWithFrame:(CGRect)frame showMessage:(NSString *)message Result:(PayResult)result time:(CGFloat)showTime
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        
        [self fatherView].frame = self.bounds;
        [self detailLabel].frame = CGRectMake(0, self.bounds.size.height - 40, self.bounds.size.width, 40);
        [self detailLabel].text = message;
        [self rightView].frame = CGRectMake(20, self.bounds.size.height - 80, self.bounds.size.height - 60, self.bounds.size.height - 60);
        [self rightView].center = CGPointMake(self.bounds.size.width/2, self.bounds.size.height - 60);
        [self errorView].frame = CGRectMake(20, self.bounds.size.height - 80, self.bounds.size.height - 60, self.bounds.size.height - 60);
        [self errorView].center = CGPointMake(self.bounds.size.width/2, self.bounds.size.height - 60);

        
        [self addSubview:[self fatherView]];
        [self addSubview:[self detailLabel]];
        
        if (result == PaySuccess) {
            [self addSubview:[self rightView]];
        } else {
            [self addSubview:[self errorView]];
        }
        
        [self show];
        
        [self afterTime:showTime];
        
    }
    return self;
}

- (void)afterTime:(CGFloat)time {

    [self performSelector:@selector(dismiss) withObject:nil afterDelay:time];
}


- (void)show {
    
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    [window addSubview:self];
}

- (void)dismiss {
    
    [self removeFromSuperview];

}

- (RightView *)rightView {
    
    if (!_rightView) {
        _rightView = [[RightView alloc] init];
        _rightView.center = CGPointMake(self.bounds.size.width/2, self.bounds.size.height/2);
        
    }
    return _rightView;
}

- (ErrorView *)errorView {

    if (!_errorView) {
        _errorView = [[ErrorView alloc] init];
        _errorView.center = CGPointMake(self.bounds.size.width/2, self.bounds.size.height/2);

    }
    return _errorView;
}

- (UIView *)fatherView {

    if (!_fatherView) {
        _fatherView = [[UIView alloc] init];
        _fatherView.backgroundColor = [UIColor blackColor];
        _fatherView.layer.cornerRadius = 4;
        _fatherView.alpha = 0.5;//0.5;
    }
    return _fatherView;
}

- (UILabel *)detailLabel
{
    if (!_detailLabel) {
        _detailLabel = [[UILabel alloc] init];
        _detailLabel.backgroundColor = [UIColor clearColor];
        _detailLabel.numberOfLines = 0;
        _detailLabel.lineBreakMode = NSLineBreakByCharWrapping;
        _detailLabel.font = [UIFont systemFontOfSize:18.0f];
        _detailLabel.textAlignment = NSTextAlignmentCenter;
        _detailLabel.textColor = [UIColor whiteColor];
    }
    return _detailLabel;
}

/*
- (void)drawRect:(CGRect)rect {
    
    UIColor *color = [UIColor whiteColor];
    [color set]; //设置线条颜色
    
    UIBezierPath* aPath = [UIBezierPath bezierPath];
    aPath.lineWidth = 2.0;
    
    aPath.lineCapStyle = kCGLineCapRound; //线条拐角
    aPath.lineJoinStyle = kCGLineCapRound; //终点处理
    
    // Set the starting point of the shape.
    [aPath moveToPoint:CGPointMake(10.0, 10.0)];
    // Draw the lines
    [aPath addLineToPoint:CGPointMake(20.0, 26.0)];
    [aPath closePath];//第五条线通过调用closePath方法得到的
    [aPath stroke];//Draws line 根据坐标点连线
    
    UIBezierPath *twoPath = [UIBezierPath bezierPath];
    twoPath.lineWidth = 2.0;
    twoPath.lineCapStyle = kCGLineCapRound;
    twoPath.lineJoinStyle = kCGLineCapRound;
    
    [twoPath moveToPoint:CGPointMake(20.0, 26.0)];
    [twoPath addLineToPoint:CGPointMake(40.0, 8.0)];
    [twoPath closePath];
    [twoPath stroke];
    
    

//= = = == = = == = = = ==  == = = = == = = = = == = = = = == = = == =  == = = = = == = = == = = = =
    //创建path
    UIBezierPath *path = [UIBezierPath bezierPath];
    // 添加圆到path
    [path addArcWithCenter:CGPointMake(20.0, 20.0) radius:16.0 startAngle:0.0 endAngle:M_PI*2 clockwise:YES];
    // 设置描边宽度（为了让描边看上去更清楚）
    [path setLineWidth:2.0];
    //设置颜色（颜色设置也可以放在最上面，只要在绘制前都可以）
    [[UIColor whiteColor] setStroke];
    [[UIColor clearColor] setFill];
    // 描边和填充
    [path stroke];
    [path fill];
    
    
}
*/

@end
