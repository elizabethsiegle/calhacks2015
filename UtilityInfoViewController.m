//
//  UtilityInfoViewController.m
//  Ribbit
//
//  Created by Arshin on 10/10/15.
//  Copyright © 2015 Tibbit. All rights reserved.
//

#import "UtilityInfoViewController.h"
#import "LoginViewController.h"

@interface UtilityInfoViewController ()

@end

@implementation UtilityInfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
   // Variables
   
   
}


- (IBAction)finishAddInfo:(id)sender {
   
   // Save Data
   
   _membersInHouse = self.totalMembersInHouse.text;
   _dependentsInHouse = self.totalDependentsInHouse.text;
   _gasAndElectricityNumber = self.gasElectricityNumber.text;
   _waterDepartmentNumber= self.waterDeptNumber.text;
   
   
   LoginViewController *loginView = [[LoginViewController alloc] init];
   
   [self.navigationController popToViewController:loginView animated:YES];
}


@end
