//
//  ViewController.m
//  ScoreKeeperIB
//
//  Created by Michelle Tessier on 7/14/15.
//  Copyright (c) 2015 MichelleTessier. All rights reserved.
//

#import "DetailViewController.h"
#import "DetailViewDataSource.h"
#import "RoundController.h"
#import "GameController.h"
#import "RoundDetailViewController.h"

static NSString *roundCell = @"playerCell";

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
    Round *round = [Round new];
    RoundController *roundController = [RoundController sharedInstance];
    [roundController addRound:round forGame:self.game toArray:self.game.rounds];
    [self.tableView reloadData];
}

- (void)updateDetailViewForNewGame:(Game *)game{
    self.game = game;
    RoundController *roundController = [RoundController sharedInstance];
    game.rounds = [NSArray new];
    for (int i = 0; i < self.game.numberOfRounds; i++){
        Round *round = [Round new];
        [roundController addRound:round forGame:self.game toArray:game.rounds];
    }
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"roundCell"];
    
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.game.rounds.count;
    
}

-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    if (editingStyle == UITableViewCellEditingStyleDelete){
        RoundController *roundController = [RoundController sharedInstance];
        Round *round = self.game.rounds[indexPath.row];
        [roundController removeRound:round forGame:self.game fromArray:self.game.rounds];
        
#warning dont forget to add save here when you add methods to save players and games to whatever that thing we learned today was
        
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    }
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqual:@"scoreTapperSegue"]){
        RoundDetailViewController *roundDetailVC = segue.destinationViewController;
        UITableViewCell *tappedCell = sender;
        NSIndexPath *indexPath = [self.tableView indexPathForCell:tappedCell];
        
        
        
    }
}






@end
