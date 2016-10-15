//
//  Gambler.m
//  Gambler
//
//  Created by BridgeLabz Solutions LLP  on 10/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import "Gambler.h"

@implementation Gambler

-(void)gambleItwithStake:(int)stake andGoal:(int)goal andTrials:(int)trial
{
    int bets = 0;
    int wins = 0;
    
    for (int i=0; i<trial; i++)
    {
        int cash = stake;
        while (cash>0 && cash<goal)
        {
            bets+=1;
            double val = drand48();
            if (val<0.5)
            {
                cash+=1;
            }
            else
            {
                cash-=1;
            }
        }
        
        if (cash == goal)
        {
            wins+=1;
        }
    }
    
    float perc = (float)wins/trial*100;
    float avgBet =(float)(bets/trial);
    
    NSLog(@"Number of wins: %d",wins);
    NSLog(@"percentage of wins: %f%c",perc,'%');
    NSLog(@"Average bets: %f",avgBet);
}
@end
