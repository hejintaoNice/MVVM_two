//
//  BaseViewModel.m
//  MVVMDemo
//
//  Created by 何锦涛 on 2017/10/29.
//  Copyright © 2017年 hither. All rights reserved.
//

#import "BaseViewModel.h"

@implementation BaseViewModel

#pragma 获取网络可到达状态
-(void) netWorkStateWithNetConnectBlock: (NetWorkBlock) netConnectBlock WithURlStr: (NSString *) strURl;
{
    BOOL netState = [HJTNetTool netWorkReachabilityWithURLString:strURl];
    netConnectBlock(netState);
}

#pragma 接收穿过来的block
-(void) setBlockWithReturnBlock: (ReturnValueBlock) returnBlock
                 WithErrorBlock: (ErrorCodeBlock) errorBlock
               WithFailureBlock: (FailureBlock) failureBlock
{
    _returnBlock = returnBlock;
    _errorBlock = errorBlock;
    _failureBlock = failureBlock;
}

@end
