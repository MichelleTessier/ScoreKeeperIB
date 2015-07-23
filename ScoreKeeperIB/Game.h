//
//  Game.h
//  ScoreKeeperIB
//
//  Created by Michelle Tessier on 7/16/15.
//  Copyright (c) 2015 MichelleTessier. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Game : NSObject

@property (nonatomic, strong) NSString *gameTitle;
@property (nonatomic, assign) NSInteger numberOfRounds;
@property (nonatomic, strong) NSArray *rounds;

@end
