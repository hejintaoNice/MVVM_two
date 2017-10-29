//
//  WBDataUser.m
//
//  Created by Heige  on 16/6/21
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "WBDataUser.h"


NSString *const kWBDataUserMbtype = @"mbtype";
NSString *const kWBDataUserAllowAllComment = @"allow_all_comment";
NSString *const kWBDataUserAllowAllActMsg = @"allow_all_act_msg";
NSString *const kWBDataUserClass = @"class";
NSString *const kWBDataUserId = @"id";
NSString *const kWBDataUserProfileImageUrl = @"profile_image_url";
NSString *const kWBDataUserVerifiedTrade = @"verified_trade";
NSString *const kWBDataUserAvatarLarge = @"avatar_large";
NSString *const kWBDataUserCreatedAt = @"created_at";
NSString *const kWBDataUserRemark = @"remark";
NSString *const kWBDataUserVerifiedReason = @"verified_reason";
NSString *const kWBDataUserLocation = @"location";
NSString *const kWBDataUserLang = @"lang";
NSString *const kWBDataUserUrl = @"url";
NSString *const kWBDataUserIdstr = @"idstr";
NSString *const kWBDataUserFollowMe = @"follow_me";
NSString *const kWBDataUserBiFollowersCount = @"bi_followers_count";
NSString *const kWBDataUserGeoEnabled = @"geo_enabled";
NSString *const kWBDataUserCreditScore = @"credit_score";
NSString *const kWBDataUserFollowersCount = @"followers_count";
NSString *const kWBDataUserVerifiedSourceUrl = @"verified_source_url";
NSString *const kWBDataUserDescription = @"description";
NSString *const kWBDataUserBlockWord = @"block_word";
NSString *const kWBDataUserStatusesCount = @"statuses_count";
NSString *const kWBDataUserFollowing = @"following";
NSString *const kWBDataUserVerifiedType = @"verified_type";
NSString *const kWBDataUserAvatarHd = @"avatar_hd";
NSString *const kWBDataUserStar = @"star";
NSString *const kWBDataUserCoverImagePhone = @"cover_image_phone";
NSString *const kWBDataUserName = @"name";
NSString *const kWBDataUserDomain = @"domain";
NSString *const kWBDataUserCity = @"city";
NSString *const kWBDataUserBlockApp = @"block_app";
NSString *const kWBDataUserOnlineStatus = @"online_status";
NSString *const kWBDataUserUrank = @"urank";
NSString *const kWBDataUserVerifiedReasonUrl = @"verified_reason_url";
NSString *const kWBDataUserScreenName = @"screen_name";
NSString *const kWBDataUserProvince = @"province";
NSString *const kWBDataUserVerifiedSource = @"verified_source";
NSString *const kWBDataUserWeihao = @"weihao";
NSString *const kWBDataUserGender = @"gender";
NSString *const kWBDataUserPagefriendsCount = @"pagefriends_count";
NSString *const kWBDataUserFavouritesCount = @"favourites_count";
NSString *const kWBDataUserMbrank = @"mbrank";
NSString *const kWBDataUserProfileUrl = @"profile_url";
NSString *const kWBDataUserUserAbility = @"user_ability";
NSString *const kWBDataUserPtype = @"ptype";
NSString *const kWBDataUserFriendsCount = @"friends_count";
NSString *const kWBDataUserVerified = @"verified";


@interface WBDataUser ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation WBDataUser

@synthesize mbtype = _mbtype;
@synthesize allowAllComment = _allowAllComment;
@synthesize allowAllActMsg = _allowAllActMsg;
@synthesize classProperty = _classProperty;
@synthesize userIdentifier = _userIdentifier;
@synthesize profileImageUrl = _profileImageUrl;
@synthesize verifiedTrade = _verifiedTrade;
@synthesize avatarLarge = _avatarLarge;
@synthesize createdAt = _createdAt;
@synthesize remark = _remark;
@synthesize verifiedReason = _verifiedReason;
@synthesize location = _location;
@synthesize lang = _lang;
@synthesize url = _url;
@synthesize idstr = _idstr;
@synthesize followMe = _followMe;
@synthesize biFollowersCount = _biFollowersCount;
@synthesize geoEnabled = _geoEnabled;
@synthesize creditScore = _creditScore;
@synthesize followersCount = _followersCount;
@synthesize verifiedSourceUrl = _verifiedSourceUrl;
@synthesize userDescription = _userDescription;
@synthesize blockWord = _blockWord;
@synthesize statusesCount = _statusesCount;
@synthesize following = _following;
@synthesize verifiedType = _verifiedType;
@synthesize avatarHd = _avatarHd;
@synthesize star = _star;
@synthesize coverImagePhone = _coverImagePhone;
@synthesize name = _name;
@synthesize domain = _domain;
@synthesize city = _city;
@synthesize blockApp = _blockApp;
@synthesize onlineStatus = _onlineStatus;
@synthesize urank = _urank;
@synthesize verifiedReasonUrl = _verifiedReasonUrl;
@synthesize screenName = _screenName;
@synthesize province = _province;
@synthesize verifiedSource = _verifiedSource;
@synthesize weihao = _weihao;
@synthesize gender = _gender;
@synthesize pagefriendsCount = _pagefriendsCount;
@synthesize favouritesCount = _favouritesCount;
@synthesize mbrank = _mbrank;
@synthesize profileUrl = _profileUrl;
@synthesize userAbility = _userAbility;
@synthesize ptype = _ptype;
@synthesize friendsCount = _friendsCount;
@synthesize verified = _verified;


+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict
{
    return [[self alloc] initWithDictionary:dict];
}

- (instancetype)initWithDictionary:(NSDictionary *)dict
{
    self = [super init];
    
    // This check serves to make sure that a non-NSDictionary object
    // passed into the model class doesn't break the parsing.
    if(self && [dict isKindOfClass:[NSDictionary class]]) {
            self.mbtype = [[self objectOrNilForKey:kWBDataUserMbtype fromDictionary:dict] doubleValue];
            self.allowAllComment = [[self objectOrNilForKey:kWBDataUserAllowAllComment fromDictionary:dict] boolValue];
            self.allowAllActMsg = [[self objectOrNilForKey:kWBDataUserAllowAllActMsg fromDictionary:dict] boolValue];
            self.classProperty = [[self objectOrNilForKey:kWBDataUserClass fromDictionary:dict] doubleValue];
            self.userIdentifier = [[self objectOrNilForKey:kWBDataUserId fromDictionary:dict] doubleValue];
            self.profileImageUrl = [self objectOrNilForKey:kWBDataUserProfileImageUrl fromDictionary:dict];
            self.verifiedTrade = [self objectOrNilForKey:kWBDataUserVerifiedTrade fromDictionary:dict];
            self.avatarLarge = [self objectOrNilForKey:kWBDataUserAvatarLarge fromDictionary:dict];
            self.createdAt = [self objectOrNilForKey:kWBDataUserCreatedAt fromDictionary:dict];
            self.remark = [self objectOrNilForKey:kWBDataUserRemark fromDictionary:dict];
            self.verifiedReason = [self objectOrNilForKey:kWBDataUserVerifiedReason fromDictionary:dict];
            self.location = [self objectOrNilForKey:kWBDataUserLocation fromDictionary:dict];
            self.lang = [self objectOrNilForKey:kWBDataUserLang fromDictionary:dict];
            self.url = [self objectOrNilForKey:kWBDataUserUrl fromDictionary:dict];
            self.idstr = [self objectOrNilForKey:kWBDataUserIdstr fromDictionary:dict];
            self.followMe = [[self objectOrNilForKey:kWBDataUserFollowMe fromDictionary:dict] boolValue];
            self.biFollowersCount = [[self objectOrNilForKey:kWBDataUserBiFollowersCount fromDictionary:dict] doubleValue];
            self.geoEnabled = [[self objectOrNilForKey:kWBDataUserGeoEnabled fromDictionary:dict] boolValue];
            self.creditScore = [[self objectOrNilForKey:kWBDataUserCreditScore fromDictionary:dict] doubleValue];
            self.followersCount = [[self objectOrNilForKey:kWBDataUserFollowersCount fromDictionary:dict] doubleValue];
            self.verifiedSourceUrl = [self objectOrNilForKey:kWBDataUserVerifiedSourceUrl fromDictionary:dict];
            self.userDescription = [self objectOrNilForKey:kWBDataUserDescription fromDictionary:dict];
            self.blockWord = [[self objectOrNilForKey:kWBDataUserBlockWord fromDictionary:dict] doubleValue];
            self.statusesCount = [[self objectOrNilForKey:kWBDataUserStatusesCount fromDictionary:dict] doubleValue];
            self.following = [[self objectOrNilForKey:kWBDataUserFollowing fromDictionary:dict] boolValue];
            self.verifiedType = [[self objectOrNilForKey:kWBDataUserVerifiedType fromDictionary:dict] doubleValue];
            self.avatarHd = [self objectOrNilForKey:kWBDataUserAvatarHd fromDictionary:dict];
            self.star = [[self objectOrNilForKey:kWBDataUserStar fromDictionary:dict] doubleValue];
            self.coverImagePhone = [self objectOrNilForKey:kWBDataUserCoverImagePhone fromDictionary:dict];
            self.name = [self objectOrNilForKey:kWBDataUserName fromDictionary:dict];
            self.domain = [self objectOrNilForKey:kWBDataUserDomain fromDictionary:dict];
            self.city = [self objectOrNilForKey:kWBDataUserCity fromDictionary:dict];
            self.blockApp = [[self objectOrNilForKey:kWBDataUserBlockApp fromDictionary:dict] doubleValue];
            self.onlineStatus = [[self objectOrNilForKey:kWBDataUserOnlineStatus fromDictionary:dict] doubleValue];
            self.urank = [[self objectOrNilForKey:kWBDataUserUrank fromDictionary:dict] doubleValue];
            self.verifiedReasonUrl = [self objectOrNilForKey:kWBDataUserVerifiedReasonUrl fromDictionary:dict];
            self.screenName = [self objectOrNilForKey:kWBDataUserScreenName fromDictionary:dict];
            self.province = [self objectOrNilForKey:kWBDataUserProvince fromDictionary:dict];
            self.verifiedSource = [self objectOrNilForKey:kWBDataUserVerifiedSource fromDictionary:dict];
            self.weihao = [self objectOrNilForKey:kWBDataUserWeihao fromDictionary:dict];
            self.gender = [self objectOrNilForKey:kWBDataUserGender fromDictionary:dict];
            self.pagefriendsCount = [[self objectOrNilForKey:kWBDataUserPagefriendsCount fromDictionary:dict] doubleValue];
            self.favouritesCount = [[self objectOrNilForKey:kWBDataUserFavouritesCount fromDictionary:dict] doubleValue];
            self.mbrank = [[self objectOrNilForKey:kWBDataUserMbrank fromDictionary:dict] doubleValue];
            self.profileUrl = [self objectOrNilForKey:kWBDataUserProfileUrl fromDictionary:dict];
            self.userAbility = [[self objectOrNilForKey:kWBDataUserUserAbility fromDictionary:dict] doubleValue];
            self.ptype = [[self objectOrNilForKey:kWBDataUserPtype fromDictionary:dict] doubleValue];
            self.friendsCount = [[self objectOrNilForKey:kWBDataUserFriendsCount fromDictionary:dict] doubleValue];
            self.verified = [[self objectOrNilForKey:kWBDataUserVerified fromDictionary:dict] boolValue];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[NSNumber numberWithDouble:self.mbtype] forKey:kWBDataUserMbtype];
    [mutableDict setValue:[NSNumber numberWithBool:self.allowAllComment] forKey:kWBDataUserAllowAllComment];
    [mutableDict setValue:[NSNumber numberWithBool:self.allowAllActMsg] forKey:kWBDataUserAllowAllActMsg];
    [mutableDict setValue:[NSNumber numberWithDouble:self.classProperty] forKey:kWBDataUserClass];
    [mutableDict setValue:[NSNumber numberWithDouble:self.userIdentifier] forKey:kWBDataUserId];
    [mutableDict setValue:self.profileImageUrl forKey:kWBDataUserProfileImageUrl];
    [mutableDict setValue:self.verifiedTrade forKey:kWBDataUserVerifiedTrade];
    [mutableDict setValue:self.avatarLarge forKey:kWBDataUserAvatarLarge];
    [mutableDict setValue:self.createdAt forKey:kWBDataUserCreatedAt];
    [mutableDict setValue:self.remark forKey:kWBDataUserRemark];
    [mutableDict setValue:self.verifiedReason forKey:kWBDataUserVerifiedReason];
    [mutableDict setValue:self.location forKey:kWBDataUserLocation];
    [mutableDict setValue:self.lang forKey:kWBDataUserLang];
    [mutableDict setValue:self.url forKey:kWBDataUserUrl];
    [mutableDict setValue:self.idstr forKey:kWBDataUserIdstr];
    [mutableDict setValue:[NSNumber numberWithBool:self.followMe] forKey:kWBDataUserFollowMe];
    [mutableDict setValue:[NSNumber numberWithDouble:self.biFollowersCount] forKey:kWBDataUserBiFollowersCount];
    [mutableDict setValue:[NSNumber numberWithBool:self.geoEnabled] forKey:kWBDataUserGeoEnabled];
    [mutableDict setValue:[NSNumber numberWithDouble:self.creditScore] forKey:kWBDataUserCreditScore];
    [mutableDict setValue:[NSNumber numberWithDouble:self.followersCount] forKey:kWBDataUserFollowersCount];
    [mutableDict setValue:self.verifiedSourceUrl forKey:kWBDataUserVerifiedSourceUrl];
    [mutableDict setValue:self.userDescription forKey:kWBDataUserDescription];
    [mutableDict setValue:[NSNumber numberWithDouble:self.blockWord] forKey:kWBDataUserBlockWord];
    [mutableDict setValue:[NSNumber numberWithDouble:self.statusesCount] forKey:kWBDataUserStatusesCount];
    [mutableDict setValue:[NSNumber numberWithBool:self.following] forKey:kWBDataUserFollowing];
    [mutableDict setValue:[NSNumber numberWithDouble:self.verifiedType] forKey:kWBDataUserVerifiedType];
    [mutableDict setValue:self.avatarHd forKey:kWBDataUserAvatarHd];
    [mutableDict setValue:[NSNumber numberWithDouble:self.star] forKey:kWBDataUserStar];
    [mutableDict setValue:self.coverImagePhone forKey:kWBDataUserCoverImagePhone];
    [mutableDict setValue:self.name forKey:kWBDataUserName];
    [mutableDict setValue:self.domain forKey:kWBDataUserDomain];
    [mutableDict setValue:self.city forKey:kWBDataUserCity];
    [mutableDict setValue:[NSNumber numberWithDouble:self.blockApp] forKey:kWBDataUserBlockApp];
    [mutableDict setValue:[NSNumber numberWithDouble:self.onlineStatus] forKey:kWBDataUserOnlineStatus];
    [mutableDict setValue:[NSNumber numberWithDouble:self.urank] forKey:kWBDataUserUrank];
    [mutableDict setValue:self.verifiedReasonUrl forKey:kWBDataUserVerifiedReasonUrl];
    [mutableDict setValue:self.screenName forKey:kWBDataUserScreenName];
    [mutableDict setValue:self.province forKey:kWBDataUserProvince];
    [mutableDict setValue:self.verifiedSource forKey:kWBDataUserVerifiedSource];
    [mutableDict setValue:self.weihao forKey:kWBDataUserWeihao];
    [mutableDict setValue:self.gender forKey:kWBDataUserGender];
    [mutableDict setValue:[NSNumber numberWithDouble:self.pagefriendsCount] forKey:kWBDataUserPagefriendsCount];
    [mutableDict setValue:[NSNumber numberWithDouble:self.favouritesCount] forKey:kWBDataUserFavouritesCount];
    [mutableDict setValue:[NSNumber numberWithDouble:self.mbrank] forKey:kWBDataUserMbrank];
    [mutableDict setValue:self.profileUrl forKey:kWBDataUserProfileUrl];
    [mutableDict setValue:[NSNumber numberWithDouble:self.userAbility] forKey:kWBDataUserUserAbility];
    [mutableDict setValue:[NSNumber numberWithDouble:self.ptype] forKey:kWBDataUserPtype];
    [mutableDict setValue:[NSNumber numberWithDouble:self.friendsCount] forKey:kWBDataUserFriendsCount];
    [mutableDict setValue:[NSNumber numberWithBool:self.verified] forKey:kWBDataUserVerified];

    return [NSDictionary dictionaryWithDictionary:mutableDict];
}

- (NSString *)description 
{
    return [NSString stringWithFormat:@"%@", [self dictionaryRepresentation]];
}

#pragma mark - Helper Method
- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict
{
    id object = [dict objectForKey:aKey];
    return [object isEqual:[NSNull null]] ? nil : object;
}


#pragma mark - NSCoding Methods

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];

    self.mbtype = [aDecoder decodeDoubleForKey:kWBDataUserMbtype];
    self.allowAllComment = [aDecoder decodeBoolForKey:kWBDataUserAllowAllComment];
    self.allowAllActMsg = [aDecoder decodeBoolForKey:kWBDataUserAllowAllActMsg];
    self.classProperty = [aDecoder decodeDoubleForKey:kWBDataUserClass];
    self.userIdentifier = [aDecoder decodeDoubleForKey:kWBDataUserId];
    self.profileImageUrl = [aDecoder decodeObjectForKey:kWBDataUserProfileImageUrl];
    self.verifiedTrade = [aDecoder decodeObjectForKey:kWBDataUserVerifiedTrade];
    self.avatarLarge = [aDecoder decodeObjectForKey:kWBDataUserAvatarLarge];
    self.createdAt = [aDecoder decodeObjectForKey:kWBDataUserCreatedAt];
    self.remark = [aDecoder decodeObjectForKey:kWBDataUserRemark];
    self.verifiedReason = [aDecoder decodeObjectForKey:kWBDataUserVerifiedReason];
    self.location = [aDecoder decodeObjectForKey:kWBDataUserLocation];
    self.lang = [aDecoder decodeObjectForKey:kWBDataUserLang];
    self.url = [aDecoder decodeObjectForKey:kWBDataUserUrl];
    self.idstr = [aDecoder decodeObjectForKey:kWBDataUserIdstr];
    self.followMe = [aDecoder decodeBoolForKey:kWBDataUserFollowMe];
    self.biFollowersCount = [aDecoder decodeDoubleForKey:kWBDataUserBiFollowersCount];
    self.geoEnabled = [aDecoder decodeBoolForKey:kWBDataUserGeoEnabled];
    self.creditScore = [aDecoder decodeDoubleForKey:kWBDataUserCreditScore];
    self.followersCount = [aDecoder decodeDoubleForKey:kWBDataUserFollowersCount];
    self.verifiedSourceUrl = [aDecoder decodeObjectForKey:kWBDataUserVerifiedSourceUrl];
    self.userDescription = [aDecoder decodeObjectForKey:kWBDataUserDescription];
    self.blockWord = [aDecoder decodeDoubleForKey:kWBDataUserBlockWord];
    self.statusesCount = [aDecoder decodeDoubleForKey:kWBDataUserStatusesCount];
    self.following = [aDecoder decodeBoolForKey:kWBDataUserFollowing];
    self.verifiedType = [aDecoder decodeDoubleForKey:kWBDataUserVerifiedType];
    self.avatarHd = [aDecoder decodeObjectForKey:kWBDataUserAvatarHd];
    self.star = [aDecoder decodeDoubleForKey:kWBDataUserStar];
    self.coverImagePhone = [aDecoder decodeObjectForKey:kWBDataUserCoverImagePhone];
    self.name = [aDecoder decodeObjectForKey:kWBDataUserName];
    self.domain = [aDecoder decodeObjectForKey:kWBDataUserDomain];
    self.city = [aDecoder decodeObjectForKey:kWBDataUserCity];
    self.blockApp = [aDecoder decodeDoubleForKey:kWBDataUserBlockApp];
    self.onlineStatus = [aDecoder decodeDoubleForKey:kWBDataUserOnlineStatus];
    self.urank = [aDecoder decodeDoubleForKey:kWBDataUserUrank];
    self.verifiedReasonUrl = [aDecoder decodeObjectForKey:kWBDataUserVerifiedReasonUrl];
    self.screenName = [aDecoder decodeObjectForKey:kWBDataUserScreenName];
    self.province = [aDecoder decodeObjectForKey:kWBDataUserProvince];
    self.verifiedSource = [aDecoder decodeObjectForKey:kWBDataUserVerifiedSource];
    self.weihao = [aDecoder decodeObjectForKey:kWBDataUserWeihao];
    self.gender = [aDecoder decodeObjectForKey:kWBDataUserGender];
    self.pagefriendsCount = [aDecoder decodeDoubleForKey:kWBDataUserPagefriendsCount];
    self.favouritesCount = [aDecoder decodeDoubleForKey:kWBDataUserFavouritesCount];
    self.mbrank = [aDecoder decodeDoubleForKey:kWBDataUserMbrank];
    self.profileUrl = [aDecoder decodeObjectForKey:kWBDataUserProfileUrl];
    self.userAbility = [aDecoder decodeDoubleForKey:kWBDataUserUserAbility];
    self.ptype = [aDecoder decodeDoubleForKey:kWBDataUserPtype];
    self.friendsCount = [aDecoder decodeDoubleForKey:kWBDataUserFriendsCount];
    self.verified = [aDecoder decodeBoolForKey:kWBDataUserVerified];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeDouble:_mbtype forKey:kWBDataUserMbtype];
    [aCoder encodeBool:_allowAllComment forKey:kWBDataUserAllowAllComment];
    [aCoder encodeBool:_allowAllActMsg forKey:kWBDataUserAllowAllActMsg];
    [aCoder encodeDouble:_classProperty forKey:kWBDataUserClass];
    [aCoder encodeDouble:_userIdentifier forKey:kWBDataUserId];
    [aCoder encodeObject:_profileImageUrl forKey:kWBDataUserProfileImageUrl];
    [aCoder encodeObject:_verifiedTrade forKey:kWBDataUserVerifiedTrade];
    [aCoder encodeObject:_avatarLarge forKey:kWBDataUserAvatarLarge];
    [aCoder encodeObject:_createdAt forKey:kWBDataUserCreatedAt];
    [aCoder encodeObject:_remark forKey:kWBDataUserRemark];
    [aCoder encodeObject:_verifiedReason forKey:kWBDataUserVerifiedReason];
    [aCoder encodeObject:_location forKey:kWBDataUserLocation];
    [aCoder encodeObject:_lang forKey:kWBDataUserLang];
    [aCoder encodeObject:_url forKey:kWBDataUserUrl];
    [aCoder encodeObject:_idstr forKey:kWBDataUserIdstr];
    [aCoder encodeBool:_followMe forKey:kWBDataUserFollowMe];
    [aCoder encodeDouble:_biFollowersCount forKey:kWBDataUserBiFollowersCount];
    [aCoder encodeBool:_geoEnabled forKey:kWBDataUserGeoEnabled];
    [aCoder encodeDouble:_creditScore forKey:kWBDataUserCreditScore];
    [aCoder encodeDouble:_followersCount forKey:kWBDataUserFollowersCount];
    [aCoder encodeObject:_verifiedSourceUrl forKey:kWBDataUserVerifiedSourceUrl];
    [aCoder encodeObject:_userDescription forKey:kWBDataUserDescription];
    [aCoder encodeDouble:_blockWord forKey:kWBDataUserBlockWord];
    [aCoder encodeDouble:_statusesCount forKey:kWBDataUserStatusesCount];
    [aCoder encodeBool:_following forKey:kWBDataUserFollowing];
    [aCoder encodeDouble:_verifiedType forKey:kWBDataUserVerifiedType];
    [aCoder encodeObject:_avatarHd forKey:kWBDataUserAvatarHd];
    [aCoder encodeDouble:_star forKey:kWBDataUserStar];
    [aCoder encodeObject:_coverImagePhone forKey:kWBDataUserCoverImagePhone];
    [aCoder encodeObject:_name forKey:kWBDataUserName];
    [aCoder encodeObject:_domain forKey:kWBDataUserDomain];
    [aCoder encodeObject:_city forKey:kWBDataUserCity];
    [aCoder encodeDouble:_blockApp forKey:kWBDataUserBlockApp];
    [aCoder encodeDouble:_onlineStatus forKey:kWBDataUserOnlineStatus];
    [aCoder encodeDouble:_urank forKey:kWBDataUserUrank];
    [aCoder encodeObject:_verifiedReasonUrl forKey:kWBDataUserVerifiedReasonUrl];
    [aCoder encodeObject:_screenName forKey:kWBDataUserScreenName];
    [aCoder encodeObject:_province forKey:kWBDataUserProvince];
    [aCoder encodeObject:_verifiedSource forKey:kWBDataUserVerifiedSource];
    [aCoder encodeObject:_weihao forKey:kWBDataUserWeihao];
    [aCoder encodeObject:_gender forKey:kWBDataUserGender];
    [aCoder encodeDouble:_pagefriendsCount forKey:kWBDataUserPagefriendsCount];
    [aCoder encodeDouble:_favouritesCount forKey:kWBDataUserFavouritesCount];
    [aCoder encodeDouble:_mbrank forKey:kWBDataUserMbrank];
    [aCoder encodeObject:_profileUrl forKey:kWBDataUserProfileUrl];
    [aCoder encodeDouble:_userAbility forKey:kWBDataUserUserAbility];
    [aCoder encodeDouble:_ptype forKey:kWBDataUserPtype];
    [aCoder encodeDouble:_friendsCount forKey:kWBDataUserFriendsCount];
    [aCoder encodeBool:_verified forKey:kWBDataUserVerified];
}

- (id)copyWithZone:(NSZone *)zone
{
    WBDataUser *copy = [[WBDataUser alloc] init];
    
    if (copy) {

        copy.mbtype = self.mbtype;
        copy.allowAllComment = self.allowAllComment;
        copy.allowAllActMsg = self.allowAllActMsg;
        copy.classProperty = self.classProperty;
        copy.userIdentifier = self.userIdentifier;
        copy.profileImageUrl = [self.profileImageUrl copyWithZone:zone];
        copy.verifiedTrade = [self.verifiedTrade copyWithZone:zone];
        copy.avatarLarge = [self.avatarLarge copyWithZone:zone];
        copy.createdAt = [self.createdAt copyWithZone:zone];
        copy.remark = [self.remark copyWithZone:zone];
        copy.verifiedReason = [self.verifiedReason copyWithZone:zone];
        copy.location = [self.location copyWithZone:zone];
        copy.lang = [self.lang copyWithZone:zone];
        copy.url = [self.url copyWithZone:zone];
        copy.idstr = [self.idstr copyWithZone:zone];
        copy.followMe = self.followMe;
        copy.biFollowersCount = self.biFollowersCount;
        copy.geoEnabled = self.geoEnabled;
        copy.creditScore = self.creditScore;
        copy.followersCount = self.followersCount;
        copy.verifiedSourceUrl = [self.verifiedSourceUrl copyWithZone:zone];
        copy.userDescription = [self.userDescription copyWithZone:zone];
        copy.blockWord = self.blockWord;
        copy.statusesCount = self.statusesCount;
        copy.following = self.following;
        copy.verifiedType = self.verifiedType;
        copy.avatarHd = [self.avatarHd copyWithZone:zone];
        copy.star = self.star;
        copy.coverImagePhone = [self.coverImagePhone copyWithZone:zone];
        copy.name = [self.name copyWithZone:zone];
        copy.domain = [self.domain copyWithZone:zone];
        copy.city = [self.city copyWithZone:zone];
        copy.blockApp = self.blockApp;
        copy.onlineStatus = self.onlineStatus;
        copy.urank = self.urank;
        copy.verifiedReasonUrl = [self.verifiedReasonUrl copyWithZone:zone];
        copy.screenName = [self.screenName copyWithZone:zone];
        copy.province = [self.province copyWithZone:zone];
        copy.verifiedSource = [self.verifiedSource copyWithZone:zone];
        copy.weihao = [self.weihao copyWithZone:zone];
        copy.gender = [self.gender copyWithZone:zone];
        copy.pagefriendsCount = self.pagefriendsCount;
        copy.favouritesCount = self.favouritesCount;
        copy.mbrank = self.mbrank;
        copy.profileUrl = [self.profileUrl copyWithZone:zone];
        copy.userAbility = self.userAbility;
        copy.ptype = self.ptype;
        copy.friendsCount = self.friendsCount;
        copy.verified = self.verified;
    }
    
    return copy;
}


@end
