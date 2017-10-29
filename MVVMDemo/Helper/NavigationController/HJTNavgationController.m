//
//  HJTNavgationController.m
//  HandByHand
//
//  Created by hejintao on 16/9/21.
//  Copyright © 2016年 hejintao. All rights reserved.
//

#import "HJTNavgationController.h"

@implementation HJTNavgationController
    
- (void)viewDidLoad {
    [super viewDidLoad];
}

// 重写push方法,方便统一处理返回按钮
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    if (self) {
        // 判断下是否是根控制器
        if (self.childViewControllers.count != 0) { // 非根控制器
            viewController.hidesBottomBarWhenPushed = YES;
            // 设置导航条左边的按钮
            UIBarButtonItem *flexBtn = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
            flexBtn.width = -8;
            UIBarButtonItem *backBtn = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"white_nav_back"] style:UIBarButtonItemStylePlain target:self action:@selector(back)];
            viewController.navigationItem.leftBarButtonItems = @[flexBtn,backBtn];
        }else{
            viewController.hidesBottomBarWhenPushed = NO;
        }
        [super pushViewController:viewController animated:animated];
    }
}

// 返回到上一个界面
- (void)back{
    [self popViewControllerAnimated:YES];
}

@end
