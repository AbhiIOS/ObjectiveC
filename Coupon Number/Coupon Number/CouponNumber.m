//
//  CouponNumber.m
//  Coupon Number
//
//  Created by BridgeLabz Solutions LLP  on 10/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import "CouponNumber.h"

@implementation CouponNumber

+(void)getCouponNumber
{
    NSMutableArray *ary = [[NSMutableArray alloc] initWithCapacity:20];
    int j;
    int i;
    for (i=0; i<=9; i++)
    {
        NSNumber *num = [NSNumber numberWithInt:arc4random_uniform(20)];
        
       if (i==0)
        {
            [ary addObject:num];
       }
       else
        {
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
    
    for (int k=0; k<[ary count]; k++)
    {
        id num = [ary objectAtIndex:k];
        NSLog(@"The Distinct Coupon Numbers are: %@",num);
    }
}

@end
