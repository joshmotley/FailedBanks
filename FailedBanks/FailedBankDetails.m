//
//  FailedBankDetails.m
//  FailedBanks
//
//  Created by Joshua Motley on 10/6/15.
//  Copyright © 2015 Motley. All rights reserved.
//

#import "FailedBankDetails.h"

@implementation FailedBankDetails

-(id)initWithUniqueId:(int)uniqueId name:(NSString *)name city:(NSString *)city state:(NSString *)state zip:(int)zip closeDate:(NSDate *)closeDate updatedDate:(NSDate *)updatedDate{
    
    if (self=[super init]) {
        self.uniqueId = uniqueId;
        self.name = name;
        self.city = city;
        self.state = state;
        self.zip = zip;
        self.closeDate = closeDate;
        self.updatedDate = updatedDate;
    }
    return self;
};

@end
