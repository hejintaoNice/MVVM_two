//
//  WBDataWBData.m
//
//  Created by Heige  on 16/6/21
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "WBDataWBData.h"
#import "WBDataStatuses.h"


NSString *const kWBDataWBDataStatuses = @"statuses";
NSString *const kWBDataWBDataInterval = @"interval";
NSString *const kWBDataWBDataNextCursor = @"next_cursor";
NSString *const kWBDataWBDataPreviousCursor = @"previous_cursor";
NSString *const kWBDataWBDataTotalNumber = @"total_number";
NSString *const kWBDataWBDataHasvisible = @"hasvisible";


@interface WBDataWBData ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation WBDataWBData

@synthesize statuses = _statuses;
@synthesize interval = _interval;
@synthesize nextCursor = _nextCursor;
@synthesize previousCursor = _previousCursor;
@synthesize totalNumber = _totalNumber;
@synthesize hasvisible = _hasvisible;


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
    NSObject *receivedWBDataStatuses = [dict objectForKey:kWBDataWBDataStatuses];
    NSMutableArray *parsedWBDataStatuses = [NSMutableArray array];
    if ([receivedWBDataStatuses isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedWBDataStatuses) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedWBDataStatuses addObject:[WBDataStatuses modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedWBDataStatuses isKindOfClass:[NSDictionary class]]) {
       [parsedWBDataStatuses addObject:[WBDataStatuses modelObjectWithDictionary:(NSDictionary *)receivedWBDataStatuses]];
    }

    self.statuses = [NSArray arrayWithArray:parsedWBDataStatuses];
            self.interval = [[self objectOrNilForKey:kWBDataWBDataInterval fromDictionary:dict] doubleValue];
            self.nextCursor = [[self objectOrNilForKey:kWBDataWBDataNextCursor fromDictionary:dict] doubleValue];
            self.previousCursor = [[self objectOrNilForKey:kWBDataWBDataPreviousCursor fromDictionary:dict] doubleValue];
            self.totalNumber = [[self objectOrNilForKey:kWBDataWBDataTotalNumber fromDictionary:dict] doubleValue];
            self.hasvisible = [[self objectOrNilForKey:kWBDataWBDataHasvisible fromDictionary:dict] boolValue];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    NSMutableArray *tempArrayForStatuses = [NSMutableArray array];
    for (NSObject *subArrayObject in self.statuses) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForStatuses addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForStatuses addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForStatuses] forKey:kWBDataWBDataStatuses];
    [mutableDict setValue:[NSNumber numberWithDouble:self.interval] forKey:kWBDataWBDataInterval];
    [mutableDict setValue:[NSNumber numberWithDouble:self.nextCursor] forKey:kWBDataWBDataNextCursor];
    [mutableDict setValue:[NSNumber numberWithDouble:self.previousCursor] forKey:kWBDataWBDataPreviousCursor];
    [mutableDict setValue:[NSNumber numberWithDouble:self.totalNumber] forKey:kWBDataWBDataTotalNumber];
    [mutableDict setValue:[NSNumber numberWithBool:self.hasvisible] forKey:kWBDataWBDataHasvisible];

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

    self.statuses = [aDecoder decodeObjectForKey:kWBDataWBDataStatuses];
    self.interval = [aDecoder decodeDoubleForKey:kWBDataWBDataInterval];
    self.nextCursor = [aDecoder decodeDoubleForKey:kWBDataWBDataNextCursor];
    self.previousCursor = [aDecoder decodeDoubleForKey:kWBDataWBDataPreviousCursor];
    self.totalNumber = [aDecoder decodeDoubleForKey:kWBDataWBDataTotalNumber];
    self.hasvisible = [aDecoder decodeBoolForKey:kWBDataWBDataHasvisible];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_statuses forKey:kWBDataWBDataStatuses];
    [aCoder encodeDouble:_interval forKey:kWBDataWBDataInterval];
    [aCoder encodeDouble:_nextCursor forKey:kWBDataWBDataNextCursor];
    [aCoder encodeDouble:_previousCursor forKey:kWBDataWBDataPreviousCursor];
    [aCoder encodeDouble:_totalNumber forKey:kWBDataWBDataTotalNumber];
    [aCoder encodeBool:_hasvisible forKey:kWBDataWBDataHasvisible];
}

- (id)copyWithZone:(NSZone *)zone
{
    WBDataWBData *copy = [[WBDataWBData alloc] init];
    
    if (copy) {

        copy.statuses = [self.statuses copyWithZone:zone];
        copy.interval = self.interval;
        copy.nextCursor = self.nextCursor;
        copy.previousCursor = self.previousCursor;
        copy.totalNumber = self.totalNumber;
        copy.hasvisible = self.hasvisible;
    }
    
    return copy;
}


@end
