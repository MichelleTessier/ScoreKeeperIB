//
//  PlayerController.m
//  ScoreKeeperIB
//
//  Created by Michelle Tessier on 7/16/15.
//  Copyright (c) 2015 MichelleTessier. All rights reserved.
//

#import "RoundController.h"
#import "GameController.h"

@interface RoundController ()

@property (nonatomic, strong) NSArray *rounds;

@end

@implementation RoundController

+ (RoundController*)sharedInstance {
    static RoundController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [RoundController new];
        
        sharedInstance.rounds = [NSArray new];
        
    });
   
    return sharedInstance;
}

- (void)addRound:(Round *)round forGame:(Game *)game toArray: (NSArray *)rounds{
    NSMutableArray *mutableRounds = [rounds mutableCopy];
    [mutableRounds addObject:round];
    game.rounds = mutableRounds;
}

- (void)removeRound:(Round *)round forGame:(Game *)game fromArray:(NSArray *)rounds{
    NSMutableArray *mutableRounds = [rounds mutableCopy];
    [mutableRounds removeObject:round];
    game.rounds = mutableRounds;
}

 

@end
