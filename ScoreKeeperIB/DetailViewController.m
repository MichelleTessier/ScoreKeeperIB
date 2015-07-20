//
//  ViewController.m
//  ScoreKeeperIB
//
//  Created by Michelle Tessier on 7/14/15.
//  Copyright (c) 2015 MichelleTessier. All rights reserved.
//

#import "DetailViewController.h"
#import "DetailViewDataSource.h"
#import "PlayerController.h"
#import "GameController.h"

static NSString *playerCell = @"playerCell";

@interface DetailViewController () <UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, assign) NSInteger rowCount;


@end

@implementation DetailViewController

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
    [playerController addPlayer:player forGame:self.game toArray:self.game.players];
    [self.tableView reloadData];
}

- (void)updateDetailViewForNewGame:(Game *)game{
    self.game = game;
    PlayerController *playerController = [PlayerController sharedInstance];
    game.players = [NSArray new];
    for (int i = 0; i < self.game.numberOfPlayers; i++){
        Player *player = [Player new];
        [playerController addPlayer:player forGame:self.game toArray:game.players];
    }
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"playerCell"];
    
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.game.players.count;
    
}

-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    if (editingStyle == UITableViewCellEditingStyleDelete){
        PlayerController *playerController = [PlayerController sharedInstance];
        Player *player = self.game.players[indexPath.row];
        [playerController removePlayer:player forGame:self.game fromArray:self.game.players];
        
#warning dont forget to add save here when you add methods to save players and games to whatever that thing we learned today was
        
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    }
}







@end
