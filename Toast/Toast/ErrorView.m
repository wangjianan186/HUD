//
//  ErrorView.m
//  Toast
//
//  Created by Bigbang on 15/10/10.
//  Copyright © 2015年 Bigbang. All rights reserved.
//

#import "ErrorView.h"

@implementation ErrorView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect {

    UIColor *color = [UIColor whiteColor];
    [color set]; //设置线条颜色
    
    UIBezierPath* aPath = [UIBezierPath bezierPath];
    aPath.lineWidth = 2.0;
    
    aPath.lineCapStyle = kCGLineCapRound; //线条拐角
    aPath.lineJoinStyle = kCGLineCapRound; //终点处理
    
    // Set the starting point of the shape.
    [aPath moveToPoint:CGPointMake(13.0, 13.0)];
    // Draw the lines
    [aPath addLineToPoint:CGPointMake(27.0, 27.0)];
    [aPath closePath];//第五条线通过调用closePath方法得到的
    [aPath stroke];//Draws line 根据坐标点连线
    
    UIBezierPath *twoPath = [UIBezierPath bezierPath];  
    twoPath.lineWidth = 2.0;
    twoPath.lineCapStyle = kCGLineCapRound;
    twoPath.lineJoinStyle = kCGLineCapRound;
    
    [twoPath moveToPoint:CGPointMake(27.0, 13.0)];
    [twoPath addLineToPoint:CGPointMake(13.0, 27.0)];
    [twoPath closePath];
    [twoPath stroke];
    
// = = = = = = = == = = = == = = = == = = = == = = = = ==
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

@end
