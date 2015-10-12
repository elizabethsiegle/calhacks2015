//
//  EditFriendsTableViewController.m
//  Ribbit
//
//  Created by Arshin
//

#import "EditFriendsTableViewController.h"
#import <Parse/Parse.h>

@interface EditFriendsTableViewController ()

@end

@implementation EditFriendsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     PFQuery *query = [PFUser query];
   [query orderByAscending:@"username"];
   [query findObjectsInBackgroundWithBlock:^(NSArray * _Nullable objects, NSError * _Nullable error) {
      if (error) {
         NSLog(@"Error: %@ %@", error, [error userInfo]);
      }
      else {
         self.allUsers = objects;
      }
   }];
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
   
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
   
    return 0;
}

@end
