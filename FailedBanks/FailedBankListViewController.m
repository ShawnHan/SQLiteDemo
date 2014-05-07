//
//  FailedBankListViewController.m
//  FailedBanks
//
//  Created by Shawn on 14-5-7.
//  Copyright (c) 2014年 hanlong. All rights reserved.
//

#import "FailedBankListViewController.h"
#import "FailedBankDatabase.h"
#import "FailedBankInfo.h"
#import "FailedBanksDetailViewController.h"
@interface FailedBankListViewController ()

@end

@implementation FailedBankListViewController
@synthesize failedBankInfos = _failedBankInfos;
@synthesize details = _details;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.failedBankInfos = [FailedBankDatabase database].failedBankInfos;
    
    self.title = @"Failed Banks";
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    // Return the number of rows in the section.
    return [_failedBankInfos count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell =
    [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle
                                       reuseIdentifier:CellIdentifier];
    }
    FailedBankInfo *info =[_failedBankInfos objectAtIndex:indexPath.row];
    cell.textLabel.text = info.name;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@, %@",info.city, info.state];
    
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (self.details == nil) {
        self.details = [[FailedBanksDetailViewController alloc] initWithNibName:@"FailedBanksDetailViewController" bundle:nil];
    }
    FailedBankInfo *info = [_failedBankInfos objectAtIndex:indexPath.row];
    _details.uniqueId = info.uniqueId;
    [self.navigationController pushViewController:_details animated:YES];
}






@end
