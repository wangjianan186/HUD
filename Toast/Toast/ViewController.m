//
//  ViewController.m
//  Toast
//
//  Created by Bigbang on 15/10/10.
//  Copyright © 2015年 Bigbang. All rights reserved.
//

#import "ViewController.h"
#import "PayToast.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor yellowColor];
    // Do any additional setup after loading the view, typically from a nib.
    
//    UIView *bg = [[UIView alloc] initWithFrame:CGRectMake(100, 200, 100, 80)];
//    bg.backgroundColor = [UIColor clearColor];
//    [self.view addSubview:bg];
//    
//    UIView *blackView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 80)];
//    blackView.backgroundColor = [UIColor blackColor];
//    blackView.alpha = 0.5;
//    [bg addSubview:blackView];
//    
//    UILabel *l = [[UILabel alloc] initWithFrame:CGRectMake(10, 20, 80, 60)];
//    l.text = @"提示文字";
//    l.textColor = [UIColor whiteColor];
//    [bg addSubview:l];
//    
//    
//    PayToast *toast = [[PayToast alloc] initWithFrame:CGRectMake(30, 10, 40 , 40)];
//    
//    toast.backgroundColor = [UIColor redColor];
//    [bg addSubview:toast];
    
    //PayToast *tost = [[PayToast alloc] initWithFrame:CGRectMake(100, 200, 140, 100) showMessage:@"支付成功" Result:PaySuccess time:1.5];
    PayToast *tost = [[PayToast alloc] initWithFrame:CGRectMake(0, 0, 140, 100) showMessage:@"支付失败" Result:PayFail time:1.5];
    tost.center = CGPointMake([UIScreen mainScreen].bounds.size.width/2, [UIScreen mainScreen].bounds.size.height/2);
    [tost show];

    //[self.view addSubview:tost];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
