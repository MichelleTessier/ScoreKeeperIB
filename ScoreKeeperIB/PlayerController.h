//
//  PlayerController.h
//  ScoreKeeperIB
//
//  Created by Michelle Tessier on 7/16/15.
//  Copyright (c) 2015 MichelleTessier. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface PlayerController : NSObject

@property (nonatomic, strong ,readonly) NSArray *players;

+ (PlayerController *) sharedInstance;
-(void)addPlayer:(Player *)player;
-(void)removeLastPlayer;


@end
