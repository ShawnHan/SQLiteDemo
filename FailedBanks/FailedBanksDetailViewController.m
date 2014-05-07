//
//  FailedBanksDetailViewController.m
//  FailedBanks
//
//  Created by Shawn on 14-5-7.
//  Copyright (c) 2014年 hanlong. All rights reserved.
//

#import "FailedBanksDetailViewController.h"
#import "FailedBankDatabase.h"
#import "FailedBankDetails.h"
@interface FailedBanksDetailViewController ()

@end

@implementation FailedBanksDetailViewController
@synthesize nameLabel = _nameLabel;
@synthesize cityLabel = _cityLabel;
@synthesize stateLabel = _stateLabel;
@synthesize zipLabel = _zipLabel;
@synthesize closedLabel = _closedLabel;
@synthesize updatedLabel = _updatedLabel;
@synthesize uniqueId = _uniqueId;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
-(void)viewWillAppear:(BOOL)animated
{
    FailedBankDetails *details = [[FailedBankDatabase database]
                                  failedBankDetails:_uniqueId];
    if (details != nil) {
        [_nameLabel setText:details.name];
        [_cityLabel setText:details.city];
        [_stateLabel setText:details.state];
        [_zipLabel setText:[NSString stringWithFormat:@"%d", details.zip]];
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        [formatter setDateFormat:@"MMMM dd, yyyy"];
        [_closedLabel setText:[formatter stringFromDate:details.closeDate]];
        [_updatedLabel setText:[formatter stringFromDate:details.updatedDate]];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
