//
//  HJTNetTool.h
//  HJTMVVM
//
//  Created by Heige on 16/6/16.
//  Copyright © 2016年 Heige. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ServerAddress.h"
NS_ASSUME_NONNULL_BEGIN
@interface HJTNetTool : NSObject

+ (NSString *)dictionaryToJson:(NSDictionary *)dic;

+ (NSDictionary *)transformation:(id)responseObject;

#pragma GET请求
+ (void)get:(nonnull NSString *)urlString progress:(nullable void(^)(NSProgress * _Nonnull progress))progressBlock success:(nullable void(^)(id _Nonnull responseObject))successBlock failure:(nullable void(^)(NSString  * _Nonnull errorLD))failureBlokc ;

#pragma POST请求
+ (void)post:(nonnull NSString *)urlString parameters:(nullable NSDictionary<NSString *,id> *)parameters progress:(nullable void(^)(NSProgress * _Nullable progress))progressBlock success:(void(^)(id _Nullable responseObject))successBlock failure:(void(^)(NSString  * _Nonnull errorLD))failureBlokc;

#pragma 监测网络的可链接性
+ (BOOL) netWorkReachabilityWithURLString:(NSString *) strUrl;


@end
NS_ASSUME_NONNULL_END
