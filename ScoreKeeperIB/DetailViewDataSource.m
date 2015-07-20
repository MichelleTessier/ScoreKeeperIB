//
//  ListViewDataSource.m
//  ScoreKeeperIB
//
//  Created by Michelle Tessier on 7/14/15.
//  Copyright (c) 2015 MichelleTessier. All rights reserved.
//

#import "DetailViewDataSource.h"
#import "PlayerController.h"
#import "GameController.h"
#import "DetailViewController.h"

static NSString *playerCell = @"playerCell";

@implementation DetailViewDataSource

//-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"playerCell"];
//    
//    return cell;
//}
//
//-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
//   
//    return self.rowCount;
//    
//}
//
//-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
//    if (editingStyle == UITableViewCellEditingStyleDelete){
//        PlayerController *playerController = [PlayerController sharedInstance];
//        Player *player = playerController.players[indexPath.row];
//        [playerController removePlayer:player];
//        
//#warning dont forget to add save here when you add methods to save players and games to whatever that thing we learned today was
//        
//        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
//    }
//}



@end
