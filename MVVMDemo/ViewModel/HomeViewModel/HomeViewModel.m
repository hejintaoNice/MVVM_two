//
//  HomeViewModel.m
//  MVVMDemo
//
//  Created by 何锦涛 on 2017/10/29.
//  Copyright © 2017年 hither. All rights reserved.
//

#import "HomeViewModel.h"
#import "WBDataModels.h"
#import "HomeDetailViewController.h"

@interface HomeViewModel ()

//@property (assign,nonatomic) NSInteger page;
@property (strong,nonatomic) WBDataWBData*model;

@end

@implementation HomeViewModel

#pragma 对ErrorCode进行处理
-(void) errorCodeWithDic: (NSDictionary *) errorDic
{
    self.errorBlock(errorDic);
}

#pragma 对网路异常进行处理
-(void) netFailure
{
    self.failureBlock();
}


#pragma 跳转到详情页面
-(void)goDetailPageWithModel:(WBDataUser *)publicModel WithViewController:(UIViewController *)superController{
    HomeDetailViewController *vc = [[HomeDetailViewController alloc]init];
    vc.publicModel = publicModel;
    [superController.navigationController pushViewController:vc animated:YES];
}

-(void)refreshRequestWithCallback:(callback)callback isHead:(BOOL)result{
//    if (result) {
//        _page = 1;
//    }else{
//        if (_page < 2) {
//            _page = 2;
//        }
//    }
    [HJTNetTool get:[NSString stringWithFormat:@"%@?access_token=%@&count=100",GetData,ACCESSTOKEN] progress:^(NSProgress * _Nonnull progress) {
        
    } success:^(id  _Nonnull responseObject) {
        _model = [[WBDataWBData alloc]initWithDictionary:responseObject];
        if (_model.statuses) {
            NSMutableArray *dataArray = [NSMutableArray array];
            NSMutableArray *textArray = [NSMutableArray array];
           // if (result) {
                if (dataArray.count > 0) {
                    [dataArray removeAllObjects];
                    [textArray removeAllObjects];
                }
//            }else{
//                _page ++;
//            }
            
            for (WBDataStatuses* statues in _model.statuses) {
                @autoreleasepool {
                    [dataArray addObject:statues.user];
                    [textArray addObject:statues];
                }
            }
            
            callback(dataArray,textArray);
        }
    } failure:^(NSString * _Nonnull errorLD) {
        
    }];
}

@end
