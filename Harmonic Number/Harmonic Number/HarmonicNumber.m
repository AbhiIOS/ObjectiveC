//
//  HarmonicNumber.m
//  Harmonic Number
//
//  Created by Abhishek Ganguly on 10/28/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import "HarmonicNumber.h"

@implementation HarmonicNumber

//Function for calculating Harmonic Number
-(void)getHarmonicNumber:(int)num
{
    double finalVal = 0.0;
    for (double i=1; i<=num; i++)
    {
        finalVal =(finalVal + (1/i));
    }
    
    NSLog(@"Harmonic value of %d is: %f",num,finalVal);
}

@end
