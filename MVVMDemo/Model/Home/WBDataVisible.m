//
//  WBDataVisible.m
//
//  Created by Heige  on 16/6/21
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "WBDataVisible.h"


NSString *const kWBDataVisibleType = @"type";
NSString *const kWBDataVisibleListId = @"list_id";


@interface WBDataVisible ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation WBDataVisible

@synthesize type = _type;
@synthesize listId = _listId;


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
            self.type = [[self objectOrNilForKey:kWBDataVisibleType fromDictionary:dict] doubleValue];
            self.listId = [[self objectOrNilForKey:kWBDataVisibleListId fromDictionary:dict] doubleValue];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[NSNumber numberWithDouble:self.type] forKey:kWBDataVisibleType];
    [mutableDict setValue:[NSNumber numberWithDouble:self.listId] forKey:kWBDataVisibleListId];

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

    self.type = [aDecoder decodeDoubleForKey:kWBDataVisibleType];
    self.listId = [aDecoder decodeDoubleForKey:kWBDataVisibleListId];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeDouble:_type forKey:kWBDataVisibleType];
    [aCoder encodeDouble:_listId forKey:kWBDataVisibleListId];
}

- (id)copyWithZone:(NSZone *)zone
{
    WBDataVisible *copy = [[WBDataVisible alloc] init];
    
    if (copy) {

        copy.type = self.type;
        copy.listId = self.listId;
    }
    
    return copy;
}


@end
