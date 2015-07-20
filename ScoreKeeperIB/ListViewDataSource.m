//
//  ListViewDataSource.m
//  ScoreKeeperIB
//
//  Created by Michelle Tessier on 7/16/15.
//  Copyright (c) 2015 MichelleTessier. All rights reserved.
//

#import "ListViewDataSource.h"

@implementation ListViewDataSource

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [GameController sharedInstance].games.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"gameCell" forIndexPath:indexPath];
    
    Game *game = [GameController sharedInstance].games[indexPath.row];
    
    cell.textLabel.text = game.gameTitle;
    
    return cell;
    
}

-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    if (editingStyle == UITableViewCellEditingStyleDelete){
        GameController *gameController = [GameController sharedInstance];
        Game *game = gameController.games[indexPath.row];
        [gameController removeGame:game];
        
#warning dont forget to add save here when you add methods to save players and games to whatever that thing we learned today was
        
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    }
}

@end
