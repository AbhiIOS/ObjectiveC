//
//  main.m
//  Bank Cash Counter
//
//  Created by BridgeLabz Solutions LLP  on 10/19/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CashCounter.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        CashCounter *cash = [[CashCounter alloc]init];
        for (int i=0; i<4; i++)
        {
            NSLog(@"Hello Welcome...Please Enter your Choice");
            NSLog(@"Press 1 for Deposit");
            NSLog(@"Press 2 for Withdrawl");
            int num;
            scanf("%d",&num);
            
            switch (num)
            {
                case 1:{
                    int num1;
                    NSLog(@"Enter the amount to be deposited");
                    scanf("%d",&num1);
                    
                    [cash deposit:num1];
                    break;
                }
                    
                case 2:{
                    [cash withdraw];
                    break;
                }
                    
                default:
                    NSLog(@"Wrong Choice Entered..");
                    NSLog(@"Transaction Cancelled");
                    break;
            }
        }
    }
    return 0;
}
