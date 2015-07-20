//
//  PlayerController.m
//  ScoreKeeperIB
//
//  Created by Michelle Tessier on 7/16/15.
//  Copyright (c) 2015 MichelleTessier. All rights reserved.
//

#import "PlayerController.h"
#import "GameController.h"

@interface PlayerController ()

@property (nonatomic, strong) NSArray *players;

@end

@implementation PlayerController

+ (PlayerController*)sharedInstance {
    static PlayerController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [PlayerController new];
        
        sharedInstance.players = [NSArray new];
        
    });
   
    return sharedInstance;
}

- (void)addPlayer:(Player *)player forGame:(Game *)game toArray: (NSArray *)players{
    NSMutableArray *mutablePlayers = [players mutableCopy];
    [mutablePlayers addObject:player];
    game.players = mutablePlayers;
}

- (void)removePlayer:(Player *)player forGame:(Game *)game fromArray:(NSArray *)players{
    NSMutableArray *mutablePlayers = [players mutableCopy];
    [mutablePlayers removeObject:player];
    game.players = mutablePlayers;
}

 

@end
