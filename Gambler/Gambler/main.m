//
//  main.m
//  Gambler
//
//  Created by BridgeLabz Solutions LLP  on 10/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Gambler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Gambler *gamble = [[Gambler alloc]init];
        
        int stake,goal,trials;
        
        NSLog(@"Enter the stake");
        scanf("%d",&stake);
        NSLog(@"Enter the goal");
        scanf("%d",&goal);
        NSLog(@"Enter the trial");
        scanf("%d",&trials);
        
        [gamble gambleItwithStake:stake andGoal:goal andTrials:trials];
    }
    return 0;
}
