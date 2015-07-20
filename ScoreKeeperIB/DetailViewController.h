//
//  ViewController.h
//  ScoreKeeperIB
//
//  Created by Michelle Tessier on 7/14/15.
//  Copyright (c) 2015 MichelleTessier. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GameController.h"
#import "DetailViewDataSource.h"

@interface DetailViewController : UIViewController <UITableViewDataSource>

@property (nonatomic, strong) Game *game;
@property (strong, nonatomic) DetailViewDataSource *dataSource;

- (void)updateDetailViewForNewGame:(Game *)game;


@end

