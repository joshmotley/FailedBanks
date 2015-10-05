//
//  FailedBankInfo.h
//  FailedBanks
//
//  Created by Joshua Motley on 11/15/15.
//  Copyright © 2015 Motley. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FailedBankInfo : NSObject

@property (nonatomic) int uniqueId;
@property (nonatomic) NSString *name;
@property (nonatomic) NSString *city;
@property (nonatomic) NSString *state;

-(id)initWithUniqueId:(int)uniqueId name:(NSString *)name city:(NSString *)city state:(NSString *)state;

@end
