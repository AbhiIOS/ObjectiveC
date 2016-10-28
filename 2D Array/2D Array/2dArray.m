//
//  2dArray.m
//  2D Array
//
//  Created by ABHISHEK GANGULY on 10/13/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import "2dArray.h"

@implementation _dArray

//Function for printing array in ouput
-(void)print2Darray:(NSMutableArray *)array
{
    NSMutableArray *ar = [[NSMutableArray alloc]initWithCapacity:[array count]];
    for (int i=0; i<[array count]; i++)
    {
        NSMutableArray *print = [array objectAtIndex:i];
        NSMutableString *data = (NSMutableString*)[print componentsJoinedByString:@" "];
        [ar insertObject:data atIndex:i ];
//        NSLog(@"%@",data);
    }
    NSMutableString *da = (NSMutableString*)[ar componentsJoinedByString:@"\n"];
    NSLog(@"\n%@",da);
}

@end
