//
//  PlayerController.m
//  ScoreKeeperIB
//
//  Created by Michelle Tessier on 7/16/15.
//  Copyright (c) 2015 MichelleTessier. All rights reserved.
//

#import "PlayerController.h"

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

- (void)addPlayer:(Player *)player{
    NSMutableArray *mutablePlayers = [self.players mutableCopy];
    [mutablePlayers addObject:player];
    self.players = mutablePlayers;
}

- (void)removeLastPlayer{
    NSMutableArray *mutablePlayers = [self.players mutableCopy];
    [mutablePlayers removeLastObject];
    self.players = mutablePlayers;
}

@end
