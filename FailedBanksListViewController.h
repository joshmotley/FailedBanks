//
//  FailedBanksListViewController.h
//  FailedBanks
//
//  Created by Joshua Motley on 11/16/15.
//  Copyright © 2015 Motley. All rights reserved.
//

#import <UIKit/UIKit.h>
@class FailedBanksDetailViewController;
@interface FailedBanksListViewController : UITableViewController


@property (strong, nonatomic) NSArray *failedBankInfos;
@property (nonatomic) FailedBanksDetailViewController *details;

@end
