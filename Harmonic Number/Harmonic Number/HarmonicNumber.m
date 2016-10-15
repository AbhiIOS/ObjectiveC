//
//  HarmonicNumber.m
//  Harmonic Number
//
//  Created by BridgeLabz Solutions LLP  on 10/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import "HarmonicNumber.h"

@implementation HarmonicNumber

-(void)getHarmonicNumber:(int)num1
{
    float sum = 0.0;
    for (int i=1;i<=num1 ;i++)
    {
        float num = (float)1/i;
        sum = sum + num;
    }
    
    NSLog(@"The %d%c%c Harmonic value is: %f",num1,'t','h',sum);
}

@end
