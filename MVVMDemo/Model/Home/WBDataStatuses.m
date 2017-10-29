//
//  WBDataStatuses.m
//
//  Created by Heige  on 16/6/21
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "WBDataStatuses.h"
#import "WBDataAnnotations.h"
#import "WBDataUser.h"
#import "WBDataVisible.h"


NSString *const kWBDataStatusesAttitudesCount = @"attitudes_count";
NSString *const kWBDataStatusesSource = @"source";
NSString *const kWBDataStatusesTextLength = @"textLength";
NSString *const kWBDataStatusesSourceType = @"source_type";
NSString *const kWBDataStatusesIdstr = @"idstr";
NSString *const kWBDataStatusesMid = @"mid";
NSString *const kWBDataStatusesTruncated = @"truncated";
NSString *const kWBDataStatusesHotWeiboTags = @"hot_weibo_tags";
NSString *const kWBDataStatusesSourceAllowclick = @"source_allowclick";
NSString *const kWBDataStatusesDarwinTags = @"darwin_tags";
NSString *const kWBDataStatusesInReplyToScreenName = @"in_reply_to_screen_name";
NSString *const kWBDataStatusesCommentsCount = @"comments_count";
NSString *const kWBDataStatusesPositiveRecomFlag = @"positive_recom_flag";
NSString *const kWBDataStatusesAnnotations = @"annotations";
NSString *const kWBDataStatusesPicUrls = @"pic_urls";
NSString *const kWBDataStatusesIsLongText = @"isLongText";
NSString *const kWBDataStatusesUserType = @"userType";
NSString *const kWBDataStatusesFavorited = @"favorited";
NSString *const kWBDataStatusesRepostsCount = @"reposts_count";
NSString *const kWBDataStatusesTextTagTips = @"text_tag_tips";
NSString *const kWBDataStatusesPageType = @"page_type";
NSString *const kWBDataStatusesGeo = @"geo";
NSString *const kWBDataStatusesId = @"id";
NSString *const kWBDataStatusesUser = @"user";
NSString *const kWBDataStatusesInReplyToUserId = @"in_reply_to_user_id";
NSString *const kWBDataStatusesBizIds = @"biz_ids";
NSString *const kWBDataStatusesText = @"text";
NSString *const kWBDataStatusesBizFeature = @"biz_feature";
NSString *const kWBDataStatusesMlevel = @"mlevel";
NSString *const kWBDataStatusesCreatedAt = @"created_at";
NSString *const kWBDataStatusesVisible = @"visible";
NSString *const kWBDataStatusesInReplyToStatusId = @"in_reply_to_status_id";


@interface WBDataStatuses ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation WBDataStatuses

@synthesize attitudesCount = _attitudesCount;
@synthesize source = _source;
@synthesize textLength = _textLength;
@synthesize sourceType = _sourceType;
@synthesize idstr = _idstr;
@synthesize mid = _mid;
@synthesize truncated = _truncated;
@synthesize hotWeiboTags = _hotWeiboTags;
@synthesize sourceAllowclick = _sourceAllowclick;
@synthesize darwinTags = _darwinTags;
@synthesize inReplyToScreenName = _inReplyToScreenName;
@synthesize commentsCount = _commentsCount;
@synthesize positiveRecomFlag = _positiveRecomFlag;
@synthesize annotations = _annotations;
@synthesize picUrls = _picUrls;
@synthesize isLongText = _isLongText;
@synthesize userType = _userType;
@synthesize favorited = _favorited;
@synthesize repostsCount = _repostsCount;
@synthesize textTagTips = _textTagTips;
@synthesize pageType = _pageType;
@synthesize geo = _geo;
@synthesize statusesIdentifier = _statusesIdentifier;
@synthesize user = _user;
@synthesize inReplyToUserId = _inReplyToUserId;
@synthesize bizIds = _bizIds;
@synthesize text = _text;
@synthesize bizFeature = _bizFeature;
@synthesize mlevel = _mlevel;
@synthesize createdAt = _createdAt;
@synthesize visible = _visible;
@synthesize inReplyToStatusId = _inReplyToStatusId;


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
            self.attitudesCount = [[self objectOrNilForKey:kWBDataStatusesAttitudesCount fromDictionary:dict] doubleValue];
            self.source = [self objectOrNilForKey:kWBDataStatusesSource fromDictionary:dict];
            self.textLength = [[self objectOrNilForKey:kWBDataStatusesTextLength fromDictionary:dict] doubleValue];
            self.sourceType = [[self objectOrNilForKey:kWBDataStatusesSourceType fromDictionary:dict] doubleValue];
            self.idstr = [self objectOrNilForKey:kWBDataStatusesIdstr fromDictionary:dict];
            self.mid = [self objectOrNilForKey:kWBDataStatusesMid fromDictionary:dict];
            self.truncated = [[self objectOrNilForKey:kWBDataStatusesTruncated fromDictionary:dict] boolValue];
            self.hotWeiboTags = [self objectOrNilForKey:kWBDataStatusesHotWeiboTags fromDictionary:dict];
            self.sourceAllowclick = [[self objectOrNilForKey:kWBDataStatusesSourceAllowclick fromDictionary:dict] doubleValue];
            self.darwinTags = [self objectOrNilForKey:kWBDataStatusesDarwinTags fromDictionary:dict];
            self.inReplyToScreenName = [self objectOrNilForKey:kWBDataStatusesInReplyToScreenName fromDictionary:dict];
            self.commentsCount = [[self objectOrNilForKey:kWBDataStatusesCommentsCount fromDictionary:dict] doubleValue];
            self.positiveRecomFlag = [[self objectOrNilForKey:kWBDataStatusesPositiveRecomFlag fromDictionary:dict] doubleValue];
    NSObject *receivedWBDataAnnotations = [dict objectForKey:kWBDataStatusesAnnotations];
    NSMutableArray *parsedWBDataAnnotations = [NSMutableArray array];
    if ([receivedWBDataAnnotations isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedWBDataAnnotations) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedWBDataAnnotations addObject:[WBDataAnnotations modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedWBDataAnnotations isKindOfClass:[NSDictionary class]]) {
       [parsedWBDataAnnotations addObject:[WBDataAnnotations modelObjectWithDictionary:(NSDictionary *)receivedWBDataAnnotations]];
    }

    self.annotations = [NSArray arrayWithArray:parsedWBDataAnnotations];
            self.picUrls = [self objectOrNilForKey:kWBDataStatusesPicUrls fromDictionary:dict];
            self.isLongText = [[self objectOrNilForKey:kWBDataStatusesIsLongText fromDictionary:dict] boolValue];
            self.userType = [[self objectOrNilForKey:kWBDataStatusesUserType fromDictionary:dict] doubleValue];
            self.favorited = [[self objectOrNilForKey:kWBDataStatusesFavorited fromDictionary:dict] boolValue];
            self.repostsCount = [[self objectOrNilForKey:kWBDataStatusesRepostsCount fromDictionary:dict] doubleValue];
            self.textTagTips = [self objectOrNilForKey:kWBDataStatusesTextTagTips fromDictionary:dict];
            self.pageType = [[self objectOrNilForKey:kWBDataStatusesPageType fromDictionary:dict] doubleValue];
            self.geo = [self objectOrNilForKey:kWBDataStatusesGeo fromDictionary:dict];
            self.statusesIdentifier = [[self objectOrNilForKey:kWBDataStatusesId fromDictionary:dict] doubleValue];
            self.user = [WBDataUser modelObjectWithDictionary:[dict objectForKey:kWBDataStatusesUser]];
            self.inReplyToUserId = [self objectOrNilForKey:kWBDataStatusesInReplyToUserId fromDictionary:dict];
            self.bizIds = [self objectOrNilForKey:kWBDataStatusesBizIds fromDictionary:dict];
            self.text = [self objectOrNilForKey:kWBDataStatusesText fromDictionary:dict];
            self.bizFeature = [[self objectOrNilForKey:kWBDataStatusesBizFeature fromDictionary:dict] doubleValue];
            self.mlevel = [[self objectOrNilForKey:kWBDataStatusesMlevel fromDictionary:dict] doubleValue];
            self.createdAt = [self objectOrNilForKey:kWBDataStatusesCreatedAt fromDictionary:dict];
            self.visible = [WBDataVisible modelObjectWithDictionary:[dict objectForKey:kWBDataStatusesVisible]];
            self.inReplyToStatusId = [self objectOrNilForKey:kWBDataStatusesInReplyToStatusId fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[NSNumber numberWithDouble:self.attitudesCount] forKey:kWBDataStatusesAttitudesCount];
    [mutableDict setValue:self.source forKey:kWBDataStatusesSource];
    [mutableDict setValue:[NSNumber numberWithDouble:self.textLength] forKey:kWBDataStatusesTextLength];
    [mutableDict setValue:[NSNumber numberWithDouble:self.sourceType] forKey:kWBDataStatusesSourceType];
    [mutableDict setValue:self.idstr forKey:kWBDataStatusesIdstr];
    [mutableDict setValue:self.mid forKey:kWBDataStatusesMid];
    [mutableDict setValue:[NSNumber numberWithBool:self.truncated] forKey:kWBDataStatusesTruncated];
    NSMutableArray *tempArrayForHotWeiboTags = [NSMutableArray array];
    for (NSObject *subArrayObject in self.hotWeiboTags) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForHotWeiboTags addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForHotWeiboTags addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForHotWeiboTags] forKey:kWBDataStatusesHotWeiboTags];
    [mutableDict setValue:[NSNumber numberWithDouble:self.sourceAllowclick] forKey:kWBDataStatusesSourceAllowclick];
    NSMutableArray *tempArrayForDarwinTags = [NSMutableArray array];
    for (NSObject *subArrayObject in self.darwinTags) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForDarwinTags addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForDarwinTags addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForDarwinTags] forKey:kWBDataStatusesDarwinTags];
    [mutableDict setValue:self.inReplyToScreenName forKey:kWBDataStatusesInReplyToScreenName];
    [mutableDict setValue:[NSNumber numberWithDouble:self.commentsCount] forKey:kWBDataStatusesCommentsCount];
    [mutableDict setValue:[NSNumber numberWithDouble:self.positiveRecomFlag] forKey:kWBDataStatusesPositiveRecomFlag];
    NSMutableArray *tempArrayForAnnotations = [NSMutableArray array];
    for (NSObject *subArrayObject in self.annotations) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForAnnotations addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForAnnotations addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForAnnotations] forKey:kWBDataStatusesAnnotations];
    NSMutableArray *tempArrayForPicUrls = [NSMutableArray array];
    for (NSObject *subArrayObject in self.picUrls) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForPicUrls addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForPicUrls addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForPicUrls] forKey:kWBDataStatusesPicUrls];
    [mutableDict setValue:[NSNumber numberWithBool:self.isLongText] forKey:kWBDataStatusesIsLongText];
    [mutableDict setValue:[NSNumber numberWithDouble:self.userType] forKey:kWBDataStatusesUserType];
    [mutableDict setValue:[NSNumber numberWithBool:self.favorited] forKey:kWBDataStatusesFavorited];
    [mutableDict setValue:[NSNumber numberWithDouble:self.repostsCount] forKey:kWBDataStatusesRepostsCount];
    NSMutableArray *tempArrayForTextTagTips = [NSMutableArray array];
    for (NSObject *subArrayObject in self.textTagTips) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForTextTagTips addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForTextTagTips addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForTextTagTips] forKey:kWBDataStatusesTextTagTips];
    [mutableDict setValue:[NSNumber numberWithDouble:self.pageType] forKey:kWBDataStatusesPageType];
    [mutableDict setValue:self.geo forKey:kWBDataStatusesGeo];
    [mutableDict setValue:[NSNumber numberWithDouble:self.statusesIdentifier] forKey:kWBDataStatusesId];
    [mutableDict setValue:[self.user dictionaryRepresentation] forKey:kWBDataStatusesUser];
    [mutableDict setValue:self.inReplyToUserId forKey:kWBDataStatusesInReplyToUserId];
    NSMutableArray *tempArrayForBizIds = [NSMutableArray array];
    for (NSObject *subArrayObject in self.bizIds) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForBizIds addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForBizIds addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForBizIds] forKey:kWBDataStatusesBizIds];
    [mutableDict setValue:self.text forKey:kWBDataStatusesText];
    [mutableDict setValue:[NSNumber numberWithDouble:self.bizFeature] forKey:kWBDataStatusesBizFeature];
    [mutableDict setValue:[NSNumber numberWithDouble:self.mlevel] forKey:kWBDataStatusesMlevel];
    [mutableDict setValue:self.createdAt forKey:kWBDataStatusesCreatedAt];
    [mutableDict setValue:[self.visible dictionaryRepresentation] forKey:kWBDataStatusesVisible];
    [mutableDict setValue:self.inReplyToStatusId forKey:kWBDataStatusesInReplyToStatusId];

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

    self.attitudesCount = [aDecoder decodeDoubleForKey:kWBDataStatusesAttitudesCount];
    self.source = [aDecoder decodeObjectForKey:kWBDataStatusesSource];
    self.textLength = [aDecoder decodeDoubleForKey:kWBDataStatusesTextLength];
    self.sourceType = [aDecoder decodeDoubleForKey:kWBDataStatusesSourceType];
    self.idstr = [aDecoder decodeObjectForKey:kWBDataStatusesIdstr];
    self.mid = [aDecoder decodeObjectForKey:kWBDataStatusesMid];
    self.truncated = [aDecoder decodeBoolForKey:kWBDataStatusesTruncated];
    self.hotWeiboTags = [aDecoder decodeObjectForKey:kWBDataStatusesHotWeiboTags];
    self.sourceAllowclick = [aDecoder decodeDoubleForKey:kWBDataStatusesSourceAllowclick];
    self.darwinTags = [aDecoder decodeObjectForKey:kWBDataStatusesDarwinTags];
    self.inReplyToScreenName = [aDecoder decodeObjectForKey:kWBDataStatusesInReplyToScreenName];
    self.commentsCount = [aDecoder decodeDoubleForKey:kWBDataStatusesCommentsCount];
    self.positiveRecomFlag = [aDecoder decodeDoubleForKey:kWBDataStatusesPositiveRecomFlag];
    self.annotations = [aDecoder decodeObjectForKey:kWBDataStatusesAnnotations];
    self.picUrls = [aDecoder decodeObjectForKey:kWBDataStatusesPicUrls];
    self.isLongText = [aDecoder decodeBoolForKey:kWBDataStatusesIsLongText];
    self.userType = [aDecoder decodeDoubleForKey:kWBDataStatusesUserType];
    self.favorited = [aDecoder decodeBoolForKey:kWBDataStatusesFavorited];
    self.repostsCount = [aDecoder decodeDoubleForKey:kWBDataStatusesRepostsCount];
    self.textTagTips = [aDecoder decodeObjectForKey:kWBDataStatusesTextTagTips];
    self.pageType = [aDecoder decodeDoubleForKey:kWBDataStatusesPageType];
    self.geo = [aDecoder decodeObjectForKey:kWBDataStatusesGeo];
    self.statusesIdentifier = [aDecoder decodeDoubleForKey:kWBDataStatusesId];
    self.user = [aDecoder decodeObjectForKey:kWBDataStatusesUser];
    self.inReplyToUserId = [aDecoder decodeObjectForKey:kWBDataStatusesInReplyToUserId];
    self.bizIds = [aDecoder decodeObjectForKey:kWBDataStatusesBizIds];
    self.text = [aDecoder decodeObjectForKey:kWBDataStatusesText];
    self.bizFeature = [aDecoder decodeDoubleForKey:kWBDataStatusesBizFeature];
    self.mlevel = [aDecoder decodeDoubleForKey:kWBDataStatusesMlevel];
    self.createdAt = [aDecoder decodeObjectForKey:kWBDataStatusesCreatedAt];
    self.visible = [aDecoder decodeObjectForKey:kWBDataStatusesVisible];
    self.inReplyToStatusId = [aDecoder decodeObjectForKey:kWBDataStatusesInReplyToStatusId];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeDouble:_attitudesCount forKey:kWBDataStatusesAttitudesCount];
    [aCoder encodeObject:_source forKey:kWBDataStatusesSource];
    [aCoder encodeDouble:_textLength forKey:kWBDataStatusesTextLength];
    [aCoder encodeDouble:_sourceType forKey:kWBDataStatusesSourceType];
    [aCoder encodeObject:_idstr forKey:kWBDataStatusesIdstr];
    [aCoder encodeObject:_mid forKey:kWBDataStatusesMid];
    [aCoder encodeBool:_truncated forKey:kWBDataStatusesTruncated];
    [aCoder encodeObject:_hotWeiboTags forKey:kWBDataStatusesHotWeiboTags];
    [aCoder encodeDouble:_sourceAllowclick forKey:kWBDataStatusesSourceAllowclick];
    [aCoder encodeObject:_darwinTags forKey:kWBDataStatusesDarwinTags];
    [aCoder encodeObject:_inReplyToScreenName forKey:kWBDataStatusesInReplyToScreenName];
    [aCoder encodeDouble:_commentsCount forKey:kWBDataStatusesCommentsCount];
    [aCoder encodeDouble:_positiveRecomFlag forKey:kWBDataStatusesPositiveRecomFlag];
    [aCoder encodeObject:_annotations forKey:kWBDataStatusesAnnotations];
    [aCoder encodeObject:_picUrls forKey:kWBDataStatusesPicUrls];
    [aCoder encodeBool:_isLongText forKey:kWBDataStatusesIsLongText];
    [aCoder encodeDouble:_userType forKey:kWBDataStatusesUserType];
    [aCoder encodeBool:_favorited forKey:kWBDataStatusesFavorited];
    [aCoder encodeDouble:_repostsCount forKey:kWBDataStatusesRepostsCount];
    [aCoder encodeObject:_textTagTips forKey:kWBDataStatusesTextTagTips];
    [aCoder encodeDouble:_pageType forKey:kWBDataStatusesPageType];
    [aCoder encodeObject:_geo forKey:kWBDataStatusesGeo];
    [aCoder encodeDouble:_statusesIdentifier forKey:kWBDataStatusesId];
    [aCoder encodeObject:_user forKey:kWBDataStatusesUser];
    [aCoder encodeObject:_inReplyToUserId forKey:kWBDataStatusesInReplyToUserId];
    [aCoder encodeObject:_bizIds forKey:kWBDataStatusesBizIds];
    [aCoder encodeObject:_text forKey:kWBDataStatusesText];
    [aCoder encodeDouble:_bizFeature forKey:kWBDataStatusesBizFeature];
    [aCoder encodeDouble:_mlevel forKey:kWBDataStatusesMlevel];
    [aCoder encodeObject:_createdAt forKey:kWBDataStatusesCreatedAt];
    [aCoder encodeObject:_visible forKey:kWBDataStatusesVisible];
    [aCoder encodeObject:_inReplyToStatusId forKey:kWBDataStatusesInReplyToStatusId];
}

- (id)copyWithZone:(NSZone *)zone
{
    WBDataStatuses *copy = [[WBDataStatuses alloc] init];
    
    if (copy) {

        copy.attitudesCount = self.attitudesCount;
        copy.source = [self.source copyWithZone:zone];
        copy.textLength = self.textLength;
        copy.sourceType = self.sourceType;
        copy.idstr = [self.idstr copyWithZone:zone];
        copy.mid = [self.mid copyWithZone:zone];
        copy.truncated = self.truncated;
        copy.hotWeiboTags = [self.hotWeiboTags copyWithZone:zone];
        copy.sourceAllowclick = self.sourceAllowclick;
        copy.darwinTags = [self.darwinTags copyWithZone:zone];
        copy.inReplyToScreenName = [self.inReplyToScreenName copyWithZone:zone];
        copy.commentsCount = self.commentsCount;
        copy.positiveRecomFlag = self.positiveRecomFlag;
        copy.annotations = [self.annotations copyWithZone:zone];
        copy.picUrls = [self.picUrls copyWithZone:zone];
        copy.isLongText = self.isLongText;
        copy.userType = self.userType;
        copy.favorited = self.favorited;
        copy.repostsCount = self.repostsCount;
        copy.textTagTips = [self.textTagTips copyWithZone:zone];
        copy.pageType = self.pageType;
        copy.geo = [self.geo copyWithZone:zone];
        copy.statusesIdentifier = self.statusesIdentifier;
        copy.user = [self.user copyWithZone:zone];
        copy.inReplyToUserId = [self.inReplyToUserId copyWithZone:zone];
        copy.bizIds = [self.bizIds copyWithZone:zone];
        copy.text = [self.text copyWithZone:zone];
        copy.bizFeature = self.bizFeature;
        copy.mlevel = self.mlevel;
        copy.createdAt = [self.createdAt copyWithZone:zone];
        copy.visible = [self.visible copyWithZone:zone];
        copy.inReplyToStatusId = [self.inReplyToStatusId copyWithZone:zone];
    }
    
    return copy;
}


@end
