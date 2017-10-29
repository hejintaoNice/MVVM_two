//
//  WBDataWBData.h
//
//  Created by Heige  on 16/6/21
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface WBDataWBData : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSArray *statuses;
@property (nonatomic, assign) double interval;
@property (nonatomic, assign) double nextCursor;
@property (nonatomic, assign) double previousCursor;
@property (nonatomic, assign) double totalNumber;
@property (nonatomic, assign) BOOL hasvisible;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
