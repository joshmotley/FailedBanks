//
//  FailedBanksDetailViewController.m
//  FailedBanks
//
//  Created by Joshua Motley on 10/6/15.
//  Copyright © 2015 Motley. All rights reserved.
//

#import "FailedBanksDetailViewController.h"
#import "FailedBankDetails.h"
#import "FailedBankDatabase.h"

@implementation FailedBanksDetailViewController

-(void)viewWillAppear:(BOOL)animated{
    FailedBankDetails *details = [[FailedBankDatabase database]failedBankDetails:_uniqueId];
    if(details!=nil){
        self.nameLabel.text = details.name;
        self.cityLabel.text = details.city;
        self.stateLabel.text = details.state;
        self.zipLabel.text = [NSString stringWithFormat:@"%d",details.zip];
        NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
        [formatter setDateFormat:@"MMMM dd, yyyy"];
        self.closedLabel.text = [formatter stringFromDate:details.closeDate];
        self.updatedLabel.text = [formatter stringFromDate:details.updatedDate];
        
    }

}

@end
