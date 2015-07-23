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

@interface RoundController : NSObject

#warning should be roundController

@property (nonatomic, strong ,readonly) NSArray *rounds;

+ (RoundController *) sharedInstance;
- (void)addRound:(Round *)round forGame:(Game *)game toArray: (NSArray *)rounds;
- (void)removeRound:(Round *)round forGame:(Game *)game fromArray:(NSArray *)rounds;


@end
