//
//  GameEntryViewController.h
//  ScoreKeeperIB
//
//  Created by Michelle Tessier on 7/17/15.
//  Copyright (c) 2015 MichelleTessier. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GameController.h"
#import "ListViewController.h"

@protocol SaveButtonDelegate;

@interface GameEntryViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *gameTextField;
@property (weak, nonatomic) IBOutlet UITextField *numberOfPlayersTextField;

@property (strong, nonatomic) ListViewController *presentingListViewController;
@property (weak, nonatomic) id <SaveButtonDelegate> delegate;

@property (nonatomic, strong) Game *game;


@end

@protocol SaveButtonDelegate <NSObject>

-(void)saveButtonTappedDelegate;

@end