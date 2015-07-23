//
//  PlayerTableViewCell.h
//  ScoreKeeperIB
//
//  Created by Michelle Tessier on 7/15/15.
//  Copyright (c) 2015 MichelleTessier. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RoundTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIStepper *scoreStepper;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@property (weak, nonatomic) IBOutlet UITextField *playerNameTextField;



@end
