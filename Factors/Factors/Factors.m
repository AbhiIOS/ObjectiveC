//
//  Factors.m
//  Factors
//
//  Created by Abhishek Ganguly on 10/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import "Factors.h"

@implementation Factors

//Function for checking a number is Prime or not
-(int)isPrime:(int)num1
{
    int temp = 0;
    for (int i=2; i<=num1/2; i++)
    {
        if (num1%i == 0)
        {
            temp = 1;
            break;
        }
    }
    return temp;
}

//Function for getting the factors of a number
-(void)getFactors:(int)fact
{
    int count =0;
    
    for (int i=2; i<=fact/2; i++)
    {
        if (fact%i==0)
        {
            int val = [self isPrime:i];
            if (val==0)
            {
                NSLog(@" %d is a prime factor of %d",i,fact);
            }
            count+=1;
        }
        
        if (count == 0) {
            NSLog(@" 1 & %d are the only multiple of %d",fact,fact);
            break;

        }
        

    }
    
}

@end
