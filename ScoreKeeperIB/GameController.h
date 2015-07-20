//
//  GameController.h
//  ScoreKeeperIB
//
//  Created by Michelle Tessier on 7/16/15.
//  Copyright (c) 2015 MichelleTessier. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Game.h"

@interface GameController : NSObject

@property (nonatomic, strong, readonly) NSArray *games;

+ (GameController*)sharedInstance;
- (void)addGame:(Game *)game;
- (void)removeGame:(Game *)game;

@end
