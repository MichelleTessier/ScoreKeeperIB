//
//  RoundDetailViewController.m
//  ScoreKeeperIB
//
//  Created by Michelle Tessier on 7/22/15.
//  Copyright (c) 2015 MichelleTessier. All rights reserved.
//


/*
 Game
 Number of Rounds
 Number of Players (1 for now)
 Game score
 total strokes
 date
 
 Each Round
 roundScore
 strokeCount
 Par
 
 Later: Each player...
 color of ball
 handicap
 
 Each course...
 map
 basic info
 
 
 
 VIEWS
 
 Game List View
 course name
 date
 number of players
 
 Round List View
 
 Round Cell (Par, roundScore)
 Game Score
 
 Round Detail View
 roundScore
 strokeCount
 par
 gameScore
 
 */


#import "RoundDetailViewController.h"

@interface RoundDetailViewController ()

@end

@implementation RoundDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor purpleColor];
    self.roundScore = 0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)userTappedAnywhere:(UITapGestureRecognizer *)sender{
    
    if (sender.state == UIGestureRecognizerStateEnded){
       
        self.roundScore ++;
        
        
        
        
    }
    
}

- (void)update{
    //put something here
}
    


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
