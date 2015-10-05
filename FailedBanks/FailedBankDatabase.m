//
//  FailedBankDatabase.m
//  FailedBanks
//
//  Created by Joshua Motley on 10/4/15.
//  Copyright © 2015 Motley. All rights reserved.
//

#import "FailedBankDatabase.h"

@implementation FailedBankDatabase

static FailedBankDatabase *_database;

+(FailedBankDatabase *)database{
    
    if(_database == nil){
        _database = [[FailedBankDatabase alloc]init];
    }
    return _database;
}

-(id)init{
    if (self=[super init]) {
        NSString *sqLiteDb = [[NSBundle mainBundle]pathForResource:@"banklist" ofType:@"sqlite3"];
        
        if (sqlite3_open([sqLiteDb UTF8String], &database) != SQLITE_OK) {
            NSLog(@"failed to open database");
        }
    }
    return self;
}

@end
