//
//  GameEntryViewController.m
//  ScoreKeeperIB
//
//  Created by Michelle Tessier on 7/17/15.
//  Copyright (c) 2015 MichelleTessier. All rights reserved.
//

#import "GameEntryViewController.h"
#import "ListViewController.h"

@interface GameEntryViewController ()


@end

@implementation GameEntryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.gameTextField.placeholder = @"Name of Game";
    self.numberOfPlayersTextField.placeholder = @"Number of Players";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)saveButtonTapped:(id)sender {
    
    //Is there a simple way to add a warning screen if a name of game is not entered?
    
        Game *game = [[Game alloc] init];
        
        game.gameTitle = self.gameTextField.text;
        NSString *string = self.numberOfPlayersTextField.text;
        game.numberOfPlayers = [string integerValue];
        
        GameController *gameController = [GameController sharedInstance];
        [gameController addGame:game];
    
    [self dismissViewControllerAnimated:YES
                             completion:^{
                                 
                                  [self.delegate saveButtonTappedDelegate];
                             }];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
