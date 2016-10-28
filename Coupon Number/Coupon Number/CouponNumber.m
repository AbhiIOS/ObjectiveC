//
//  CouponNumber.m
//  Coupon Number
//
//  Created by Abhishek Ganguly on 10/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import "CouponNumber.h"

@implementation CouponNumber

//Function for getting coupon number
+(void)getCouponNumber
{
    NSMutableArray *ary = [[NSMutableArray alloc] initWithCapacity:20];
    int j;
    int i;
    for (i=0; i<=9; i++)
    {
        //obtaining random number
        NSNumber *num = [NSNumber numberWithInt:arc4random_uniform(20)];
        
       if (i==0)
        {
            [ary addObject:num];
       }
       else
        {
            //checking for repeated character
            int k=0;
            for (j=0; j<[ary count]; j++)
            {
                NSNumber *val = [ary objectAtIndex:j];
                if (val==num)
                {
                    k+=1;
                }
            }
            
            if (k==0)
            {
                [ary addObject:num];
            }
        }
    }
    
    //Printing the Distinct coupon numbers
    for (int k=0; k<[ary count]; k++)
    {
        id num = [ary objectAtIndex:k];
        NSLog(@"The Distinct Coupon Numbers are: %@",num);
    }
}

@end
