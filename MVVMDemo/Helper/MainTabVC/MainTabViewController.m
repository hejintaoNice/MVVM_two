//
//  MainTabViewController.m
//  MVVMDemo
//
//  Created by 何锦涛 on 2017/10/28.
//  Copyright © 2017年 hither. All rights reserved.
//

#import "MainTabViewController.h"
#import "HomeViewController.h"
#import "PicWordViewController.h"
#import "VedioViewController.h"
#import "HJTNavgationController.h"

#define ClassKey   @"rootVCClassString"
#define TitleKey   @"title"
#define ImgKey     @"imageName"
#define SelImgKey  @"selectedImageName"

@interface MainTabViewController ()

@property (nonatomic, strong) UIViewController *vc;

@end

@implementation MainTabViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self configTab];
}

-(void)configTab{
    [UITabBar appearance].translucent = NO;
    self.tabBar.barTintColor = [UIColor whiteColor];
    [self setUpChildVC];
}

-(void)setUpChildVC{
    NSArray *childItemsArray = @[
                                 @{ClassKey  : @"HomeViewController",
                                   TitleKey  : @"首页",
                                   ImgKey    : @"news",
                                   SelImgKey : @"newsblue"},
                                 
                                 @{ClassKey  : @"PicWordViewController",
                                   TitleKey  : @"分类",
                                   ImgKey    : @"live",
                                   SelImgKey : @"liveblue"},
                                 
                                 @{ClassKey  : @"VedioViewController",
                                   TitleKey  : @"发现",
                                   ImgKey    : @"my",
                                   SelImgKey : @"myblue"}
                                 ];
    
    UIFont *font = [UIFont fontWithName:@"Helvetica" size:13.0];
    UIColor *color_act = RGBCOLOR(67, 137, 200);
    [childItemsArray enumerateObjectsUsingBlock:^(NSDictionary *dict, NSUInteger idx, BOOL *stop) {
        
        self.vc = [[NSClassFromString(dict[ClassKey]) alloc]init];
        self.vc.title = dict[TitleKey];
        HJTNavgationController *nav = [[HJTNavgationController alloc] initWithRootViewController:self.vc];
        UITabBarItem *item = nav.tabBarItem;
        item.title = dict[TitleKey];
        item.image = [[UIImage imageNamed:dict[ImgKey]]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        item.selectedImage = [[UIImage imageNamed:dict[SelImgKey]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        [item setTitleTextAttributes:@{NSForegroundColorAttributeName : color_act,NSFontAttributeName:font} forState:UIControlStateSelected];
        [item setTitleTextAttributes:@{NSFontAttributeName:font} forState:UIControlStateNormal];
        
        [nav.tabBarItem setTitlePositionAdjustment:UIOffsetMake(0, 0)];
        [self addChildViewController:nav];
        
    }];
    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

@end
