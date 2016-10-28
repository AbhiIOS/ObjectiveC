//
//  PowerOf2.m
//  Power 2
//
//  Created by Abhishek Ganguly on 10/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import "PowerOf2.h"

@implementation PowerOf2

-(void)power:(int)num1
{
    int value = 1;
    int i = 1;
    
    while (i<=num1)
    {
        value = value * 2;
        NSLog(@"2^%d %c %d",i,'=',value);
        i++;
    }
    
}

@end
