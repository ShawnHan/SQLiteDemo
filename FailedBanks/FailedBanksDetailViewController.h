//
//  FailedBanksDetailViewController.h
//  FailedBanks
//
//  Created by Shawn on 14-5-7.
//  Copyright (c) 2014年 hanlong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FailedBanksDetailViewController : UIViewController {
    UILabel *_nameLabel;
    UILabel *_cityLabel;
    UILabel *_stateLabel;
    UILabel *_zipLabel;
    UILabel *_closedLabel;
    UILabel *_updatedLabel;
    int _uniqueId;
}
@property (nonatomic, retain) IBOutlet UILabel *nameLabel;
@property (nonatomic, retain) IBOutlet UILabel *cityLabel;
@property (nonatomic, retain) IBOutlet UILabel *stateLabel;
@property (nonatomic, retain) IBOutlet UILabel *zipLabel;
@property (nonatomic, retain) IBOutlet UILabel *closedLabel;
@property (nonatomic, retain) IBOutlet UILabel *updatedLabel;
@property (nonatomic, assign) int uniqueId;

@end
