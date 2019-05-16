//
//  ViewController.m
//  QiShareButtonDemo
//
//  Created by qinwanli on 2019/5/16.
//  Copyright © 2019 qinwanli. All rights reserved.
//

#import "ViewController.h"
#import "QiShareButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    QiShareButton *btn = [[QiShareButton alloc]initWithFrame:CGRectZero];
    btn.backgroundColor = [UIColor cyanColor];
    [btn setTitle:@"QiShareBtn" forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:@"warning_risk_safe"] forState:UIControlStateNormal];
    //! 左右分布 图片在左
    btn.titleRect = CGRectMake(60.0 , 10.0, 100.0, 40.0);
    btn.imageRect = CGRectMake(10.0, 10.0, 40.0, 40.0);
    //! 左右分布 图片在右
    btn.titleRect = CGRectMake(10.0 , 10.0, 100, 40);
    btn.imageRect = CGRectMake(40, 60, 40, 40);
    //! 上下分布 图片在下
    btn.titleRect = CGRectMake(10.0 , 10.0, 100, 40);
    btn.imageRect = CGRectMake(40, 60, 40, 40);
    //! 上下分布 图片在上
    btn.titleRect = CGRectMake(10 , 60, 100, 40);
    btn.imageRect = CGRectMake(40, 10, 40, 40);
    
    [btn layoutIfNeeded];//!< 立即得出btn自适应后的frame
    btn.center = self.view.center;
    [self.view addSubview:btn];
}


@end
