//
//  PlayerTableViewCell.m
//  ScoreKeeperIB
//
//  Created by Michelle Tessier on 7/15/15.
//  Copyright (c) 2015 MichelleTessier. All rights reserved.
//

#import "RoundTableViewCell.h"

@interface RoundTableViewCell ()  

@end

@implementation RoundTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)stepperValueChanged:(UIStepper *)stepper {
    int score = stepper.value;
    self.scoreLabel.text = [NSString stringWithFormat:@"%li", (long) score];
}




@end
