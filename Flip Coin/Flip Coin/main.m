//
//  main.m
//  Flip Coin
//
//  Created by BridgeLabz Solutions LLP  on 10/10/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       int num;
        int heads=0;
        int tails = 0;
        NSLog(@"Enter the number of times to flip the coin");
        scanf("%d",&num);
        int i=0;
        while (i<num)
        {
            double randNum = drand48();
        //NSLog(@"%f",randNum);
            if (randNum<0.5)
            {
                tails = tails+1;
            }
            else
            {
                heads= heads+1;
            }
            i++;
        }
        
       double perc = (double)heads/num*100;
      double perc1 = (double)tails/num*100;
      NSLog(@"Heads: %d%c",(int)perc,'%');
      NSLog(@"Tails: %d%c",(int)perc1,'%');
    }
    return 0;
}
