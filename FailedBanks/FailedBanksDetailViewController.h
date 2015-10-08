//
//  FailedBanksDetailViewController.h
//  FailedBanks
//
//  Created by Joshua Motley on 10/6/15.
//  Copyright © 2015 Motley. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FailedBanksDetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *cityLabel;
@property (weak, nonatomic) IBOutlet UILabel *stateLabel;
@property (weak, nonatomic) IBOutlet UILabel *zipLabel;
@property (weak, nonatomic) IBOutlet UILabel *closedLabel;
@property (weak, nonatomic) IBOutlet UILabel *updatedLabel;
@property (nonatomic) int uniqueId;



@end
