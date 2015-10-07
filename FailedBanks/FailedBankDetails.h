//
//  FailedBankDetails.h
//  FailedBanks
//
//  Created by Joshua Motley on 10/6/15.
//  Copyright © 2015 Motley. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FailedBankDetails : NSObject

@property (nonatomic) int uniqueId;
@property (nonatomic) NSString *name;
@property (nonatomic) NSString *city;
@property (nonatomic) NSString *state;
@property (nonatomic) int zip;
@property (nonatomic, strong) NSDate *closeDate;
@property (nonatomic, strong) NSDate *updatedDate;

-(id)initWithUniqueId:(int)uniqueId name:(NSString *)name city:(NSString *)city state:(NSString *)state zip:(int)zip closeDate:(NSDate *)closeDate updatedDate:(NSDate *)updatedDate;

@end
