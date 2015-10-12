//
//  UtilityInfoViewController.h
//  Ribbit
//
//  Created by Arshin on 10/10/15.
//  Copyright © 2015 Tibbit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UtilityInfoViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *finishAddingInfo;

@property (weak, nonatomic) IBOutlet UITextField *totalMembersInHouse;
@property (weak, nonatomic) IBOutlet UITextField *totalDependentsInHouse;
@property (weak, nonatomic) IBOutlet UITextField *gasElectricityNumber;
@property (weak, nonatomic) IBOutlet UITextField *waterDeptNumber;
@property (weak, nonatomic) IBOutlet UIButton *showDependentDetail;


@property (weak, nonatomic) NSString *membersInHouse;
@property (weak, nonatomic) NSString *dependentsInHouse;
@property (weak, nonatomic) NSString *gasAndElectricityNumber;
@property (weak, nonatomic) NSString *waterDepartmentNumber;

@end
