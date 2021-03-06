//
//  FailedBankDatabase.h
//  FailedBanks
//
//  Created by Joshua Motley on 10/4/15.
//  Copyright © 2015 Motley. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <sqlite3.h>
@class FailedBankDetails;
@interface FailedBankDatabase : NSObject
@property sqlite3 *database;

+(FailedBankDatabase *)database;
-(NSArray *)failedBankInfos;
-(FailedBankDetails *)failedBankDetails:(int)uniqueId;

@end
