//
//  WBDataAnnotations.m
//
//  Created by Heige  on 16/6/21
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "WBDataAnnotations.h"


NSString *const kWBDataAnnotationsClientMblogid = @"client_mblogid";
NSString *const kWBDataAnnotationsShooting = @"shooting";
NSString *const kWBDataAnnotationsMapiRequest = @"mapi_request";


@interface WBDataAnnotations ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation WBDataAnnotations

@synthesize clientMblogid = _clientMblogid;
@synthesize shooting = _shooting;
@synthesize mapiRequest = _mapiRequest;


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
            self.clientMblogid = [self objectOrNilForKey:kWBDataAnnotationsClientMblogid fromDictionary:dict];
            self.shooting = [[self objectOrNilForKey:kWBDataAnnotationsShooting fromDictionary:dict] doubleValue];
            self.mapiRequest = [[self objectOrNilForKey:kWBDataAnnotationsMapiRequest fromDictionary:dict] boolValue];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.clientMblogid forKey:kWBDataAnnotationsClientMblogid];
    [mutableDict setValue:[NSNumber numberWithDouble:self.shooting] forKey:kWBDataAnnotationsShooting];
    [mutableDict setValue:[NSNumber numberWithBool:self.mapiRequest] forKey:kWBDataAnnotationsMapiRequest];

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

    self.clientMblogid = [aDecoder decodeObjectForKey:kWBDataAnnotationsClientMblogid];
    self.shooting = [aDecoder decodeDoubleForKey:kWBDataAnnotationsShooting];
    self.mapiRequest = [aDecoder decodeBoolForKey:kWBDataAnnotationsMapiRequest];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_clientMblogid forKey:kWBDataAnnotationsClientMblogid];
    [aCoder encodeDouble:_shooting forKey:kWBDataAnnotationsShooting];
    [aCoder encodeBool:_mapiRequest forKey:kWBDataAnnotationsMapiRequest];
}

- (id)copyWithZone:(NSZone *)zone
{
    WBDataAnnotations *copy = [[WBDataAnnotations alloc] init];
    
    if (copy) {

        copy.clientMblogid = [self.clientMblogid copyWithZone:zone];
        copy.shooting = self.shooting;
        copy.mapiRequest = self.mapiRequest;
    }
    
    return copy;
}


@end
