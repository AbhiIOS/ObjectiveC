//
//  FindNumber.m
//  Find Number
//
//  Created by ABHISHEK GANGULY on 10/17/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import "FindNumber.h"

@implementation FindNumber

-(void)getNumber:(int)steps
{
    int result = 1;
    int N;
    int check;
    
    for (int i=1; i<=steps; i++)
    {
        result = result * 2;
    }
    
    N = result;
    NSLog(@"Imagine the number between 1 to %d",N);
    
    int first = 1;
    int last = N/2;
    int i=2;
    int j=4;
    
    for (int k=1; k<steps; k++)
    {
        NSLog(@"Is your number between %d to %d ???",first,last);
        NSLog(@"Press 1 for Yes      Press 0 for No");
        scanf("%d",&check);
        
        if (check==1)
        {
            N = N/2;
            last = last-((last-first+1)/2);
        }
        else
        {
            first = first + N/i;
            last = last + N/j;
            i = i+i;
            j = j+j;
        }
    }
    
    NSLog(@"Is your number is %d ???",first);
    NSLog(@"Press 1 for Yes      Press 0 for No");
    scanf("%d",&check);
    
    if (check==1)
    {
        NSLog(@"Your number is %d",first);
    }
    else
    {
        NSLog(@"Your number is %d",last+1);
    }
}

@end
