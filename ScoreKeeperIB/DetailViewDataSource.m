//
//  ListViewDataSource.m
//  ScoreKeeperIB
//
//  Created by Michelle Tessier on 7/14/15.
//  Copyright (c) 2015 MichelleTessier. All rights reserved.
//

#import "DetailViewDataSource.h"
#import "RoundController.h"

#import "DetailViewController.h"

static NSString *roundCell = @"roundCell";

@implementation DetailViewDataSource 

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
        Round *round = roundController.rounds[indexPath.row];
        [roundController removeRound:round forGame:self.game fromArray:self.game.rounds];
        
#warning dont forget to add save here when you add methods to save players and games to whatever that thing we learned today was
        
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    }
}



@end
