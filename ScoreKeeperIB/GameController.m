//
//  GameController.m
//  ScoreKeeperIB
//
//  Created by Michelle Tessier on 7/16/15.
//  Copyright (c) 2015 MichelleTessier. All rights reserved.
//

#import "GameController.h"

@interface GameController ()

@property (nonatomic, strong) NSArray *games;

@end

@implementation GameController

+ (GameController*)sharedInstance {
    static GameController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [GameController new];
        sharedInstance.games = [NSArray new];
    });
   
    return sharedInstance;
}

- (void)addGame:(Game *)game{
    NSMutableArray *mutableArray = [self.games mutableCopy];
    [mutableArray addObject:game];
    self.games = mutableArray;
}

- (void)removeGame:(Game *)game{
    
    if (!game) {
        return;
    }
    
    NSMutableArray *mutableArray = [self.games mutableCopy];
    [mutableArray removeObject:game];
    self.games = mutableArray;
}




@end
