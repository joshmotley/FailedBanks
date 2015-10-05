//
//  FailedBankInfo.m
//  FailedBanks
//
//  Created by Joshua Motley on 11/15/15.
//  Copyright © 2015 Motley. All rights reserved.
//

#import "FailedBankInfo.h"

@implementation FailedBankInfo

-(id)initWithUniqueId:(int)uniqueId name:(NSString *)name city:(NSString *)city state:(NSString *)state{
    
    if (self = [super init]) {
        _uniqueId = uniqueId;
        _name = name;
        _city = city;
        _state = state;
    }
    return self;
  
}

@end
