//
//  FailedBanksListViewController.m
//  FailedBanks
//
//  Created by Joshua Motley on 11/16/15.
//  Copyright © 2015 Motley. All rights reserved.
//

#import "FailedBanksListViewController.h"
#import "FailedBankDatabase.h"
#import "FailedBankInfo.h"
#import "FailedBanksDetailViewController.h"

@implementation FailedBanksListViewController

-(void)viewDidLoad{
    
    _failedBankInfos = [FailedBankDatabase database].failedBankInfos;
    self.title = @"Failed Banks";
    
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [_failedBankInfos count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if(cell==nil){
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    
    FailedBankInfo *info = [_failedBankInfos objectAtIndex:indexPath.row];
    cell.textLabel.text = info.name;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@, %@", info.city, info.state];
    
    
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{

    if ([segue.identifier  isEqual: @"detailsSegue"]) {
        self.details = segue.destinationViewController;
        
    }
    
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if(self.details == nil){
        self.details = [[FailedBanksDetailViewController alloc] initWithNibName:@"FailedBanksDetailViewController" bundle:nil];}
    
    FailedBankInfo *info = [_failedBankInfos objectAtIndex:indexPath.row];
    self.details.uniqueId =info.uniqueId;
    [self performSegueWithIdentifier:@"detailsSegue" sender:self];
}

@end
