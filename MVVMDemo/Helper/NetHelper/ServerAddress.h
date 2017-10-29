//
//  ServerAddress.h
//  HJTMVVM
//
//  Created by Heige on 16/6/16.
//  Copyright © 2016年 Heige. All rights reserved.
//

#ifndef ServerAddress_h
#define ServerAddress_h

#define NetworkServer   @"https://api.weibo.com"

#define GetData    @"/2/statuses/public_timeline.json"
//accessToken
#define ACCESSTOKEN @"2.00NofgBD0L1k4pc584f79cc48SKGdD"

#define SOURCE @"source"
#define TOKEN @"access_token"
#define COUNT @"count"

#define STATUSES @"statuses"
#define CREATETIME @"created_at"
#define WEIBOID @"id"
#define WEIBOTEXT @"text"
#define USER @"user"
#define UID @"id"
#define HEADIMAGEURL @"profile_image_url"
#define USERNAME @"screen_name"

typedef void (^ReturnValueBlock) (id returnValue);
typedef void (^ErrorCodeBlock) (id errorCode);
typedef void (^FailureBlock)();
typedef void (^NetWorkBlock)(BOOL netConnetState);

//---------------------------SVProgressHUD--------
//#define SHOW_ERROR [SVProgressHUD showErrorWithStatus:[NSString stringWithFormat:@"%@",[[responseObject objectForKey:@"msg"] isEqual:[NSNull null]] ? @"不好意思，出错啦-.-" : [responseObject objectForKey:@"msg"]] maskType:SVProgressHUDMaskTypeGradient];
#define SHOW_ERROR [SVProgressHUD showErrorWithStatus:@"出错了"];
#define SHOW_NTERROR [SVProgressHUD showErrorWithStatus:@"网络在开小差哦~\(≧▽≦)/~"];
#define SHOW_STATUS [SVProgressHUD showWithStatus:@"请稍等..." maskType:SVProgressHUDMaskTypeGradient];
#define SHOW_HIDDEN [SVProgressHUD dismiss];

#endif /* ServerAddress_h */
