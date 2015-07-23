//
//  ListViewDataSource.h
//  ScoreKeeperIB
//
//  Created by Michelle Tessier on 7/14/15.
//  Copyright (c) 2015 MichelleTessier. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "GameController.h"

@interface DetailViewDataSource : NSObject  <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, assign) NSInteger rowCount;

@property (nonatomic, strong) Game *game;


@end
