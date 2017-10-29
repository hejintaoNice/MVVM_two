//
//  WBDataUser.h
//
//  Created by Heige  on 16/6/21
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface WBDataUser : NSObject <NSCoding, NSCopying>

@property (nonatomic, assign) double mbtype;
@property (nonatomic, assign) BOOL allowAllComment;
@property (nonatomic, assign) BOOL allowAllActMsg;
@property (nonatomic, assign) double classProperty;
@property (nonatomic, assign) double userIdentifier;
@property (nonatomic, strong) NSString *profileImageUrl;
@property (nonatomic, strong) NSString *verifiedTrade;
@property (nonatomic, strong) NSString *avatarLarge;
@property (nonatomic, strong) NSString *createdAt;
@property (nonatomic, strong) NSString *remark;
@property (nonatomic, strong) NSString *verifiedReason;
@property (nonatomic, strong) NSString *location;
@property (nonatomic, strong) NSString *lang;
@property (nonatomic, strong) NSString *url;
@property (nonatomic, strong) NSString *idstr;
@property (nonatomic, assign) BOOL followMe;
@property (nonatomic, assign) double biFollowersCount;
@property (nonatomic, assign) BOOL geoEnabled;
@property (nonatomic, assign) double creditScore;
@property (nonatomic, assign) double followersCount;
@property (nonatomic, strong) NSString *verifiedSourceUrl;
@property (nonatomic, strong) NSString *userDescription;
@property (nonatomic, assign) double blockWord;
@property (nonatomic, assign) double statusesCount;
@property (nonatomic, assign) BOOL following;
@property (nonatomic, assign) double verifiedType;
@property (nonatomic, strong) NSString *avatarHd;
@property (nonatomic, assign) double star;
@property (nonatomic, strong) NSString *coverImagePhone;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *domain;
@property (nonatomic, strong) NSString *city;
@property (nonatomic, assign) double blockApp;
@property (nonatomic, assign) double onlineStatus;
@property (nonatomic, assign) double urank;
@property (nonatomic, strong) NSString *verifiedReasonUrl;
@property (nonatomic, strong) NSString *screenName;
@property (nonatomic, strong) NSString *province;
@property (nonatomic, strong) NSString *verifiedSource;
@property (nonatomic, strong) NSString *weihao;
@property (nonatomic, strong) NSString *gender;
@property (nonatomic, assign) double pagefriendsCount;
@property (nonatomic, assign) double favouritesCount;
@property (nonatomic, assign) double mbrank;
@property (nonatomic, strong) NSString *profileUrl;
@property (nonatomic, assign) double userAbility;
@property (nonatomic, assign) double ptype;
@property (nonatomic, assign) double friendsCount;
@property (nonatomic, assign) BOOL verified;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
