//
//  ListViewController.m
//  ScoreKeeperIB
//
//  Created by Michelle Tessier on 7/16/15.
//  Copyright (c) 2015 MichelleTessier. All rights reserved.
//

#import "GameViewController.h"
#import "DetailViewController.h"
#import "GameController.h"
#import "GameEntryViewController.h"
#import "DetailViewDataSource.h"

@interface GameViewController () <SaveButtonDelegate>
@property (weak, nonatomic) IBOutlet UITableView *gameTableView;

@end

@implementation GameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
[self.gameTableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqual:@"viewSegue"]){
        DetailViewController *detailVC = segue.destinationViewController;
        UITableViewCell *tappedCell = sender;
        NSIndexPath *indexPath = [self.gameTableView indexPathForCell:tappedCell];
        Game *game = [GameController sharedInstance].games[indexPath.row];
        detailVC.game = game;
        detailVC.navigationItem.title = detailVC.game.gameTitle;
       
    }
    
    if ([segue.identifier isEqualToString:@"transitionToNewGame"]) {
        DetailViewController *detailVC = segue.destinationViewController;
        GameController *gameController = [GameController sharedInstance];
        Game *game = gameController.games.lastObject;
        detailVC.game = game;
        [detailVC updateDetailViewForNewGame:detailVC.game];
        detailVC.navigationItem.title = detailVC.game.gameTitle;
    }
    
    if ([segue.identifier isEqualToString:@"addNewGame"]){
        GameEntryViewController *controller = segue.destinationViewController;
        controller.delegate = self;
    }
    
}


- (void) saveButtonTappedDelegate{
    usleep(100000);
    [self performSegueWithIdentifier:@"transitionToNewGame" sender:self];
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
