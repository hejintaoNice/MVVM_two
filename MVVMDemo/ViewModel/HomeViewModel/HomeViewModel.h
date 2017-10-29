//
//  HomeViewModel.h
//  MVVMDemo
//
//  Created by 何锦涛 on 2017/10/29.
//  Copyright © 2017年 hither. All rights reserved.
//

#import "BaseViewModel.h"
#import "WBDataModels.h"

typedef void (^callback) (NSArray *userArray,NSArray *userTextArray);

@interface HomeViewModel : BaseViewModel

//跳转到详情页
-(void)goDetailPageWithModel:(WBDataUser *)publicModel WithViewController: (UIViewController *)superController;

//tableView刷新的网络请求
-(void)refreshRequestWithCallback:(callback)callback isHead:(BOOL)result;

@end
