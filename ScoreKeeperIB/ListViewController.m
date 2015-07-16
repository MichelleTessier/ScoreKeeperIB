//
//  ViewController.m
//  ScoreKeeperIB
//
//  Created by Michelle Tessier on 7/14/15.
//  Copyright (c) 2015 MichelleTessier. All rights reserved.
//

#import "ListViewController.h"
#import "ListViewDataSource.h"
#import "PlayerController.h"

@interface ListViewController () <UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}


- (IBAction)addButtonTapped:(id)sender {
    Player *player = [Player new];
    PlayerController *playerController = [PlayerController sharedInstance];
    [playerController addPlayer:player];
    [self.tableView reloadData];
}

- (IBAction)removePlayerButtonTapped:(id)sender {
    PlayerController *playerController = [PlayerController sharedInstance];
    [playerController removeLastPlayer];
    [self.tableView reloadData];
}




@end
