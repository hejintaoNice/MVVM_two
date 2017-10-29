//
//  WBDataAnnotations.h
//
//  Created by Heige  on 16/6/21
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface WBDataAnnotations : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSString *clientMblogid;
@property (nonatomic, assign) double shooting;
@property (nonatomic, assign) BOOL mapiRequest;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
