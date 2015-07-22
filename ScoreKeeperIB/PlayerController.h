//
//  PlayerController.h
//  ScoreKeeperIB
//
//  Created by Michelle Tessier on 7/16/15.
//  Copyright (c) 2015 MichelleTessier. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Round.h"
#import "GameController.h"

@interface PlayerController : NSObject

#warning should be roundController

@property (nonatomic, strong ,readonly) NSArray *players;

+ (PlayerController *) sharedInstance;
- (void)addPlayer:(Round *)player forGame:(Game *)game toArray: (NSArray *)players;
- (void)removePlayer:(Round *)player forGame:(Game *)game fromArray:(NSArray *)players;


@end
