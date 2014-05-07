//
//  FailedBankListViewController.h
//  FailedBanks
//
//  Created by Shawn on 14-5-7.
//  Copyright (c) 2014年 hanlong. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FailedBanksDetailViewController;

@interface FailedBankListViewController : UITableViewController {
    NSArray *_failedBankInfos;
    FailedBanksDetailViewController *_details;
}
@property (nonatomic, retain) NSArray *failedBankInfos;
@property (nonatomic, retain) FailedBanksDetailViewController *details;

@end
