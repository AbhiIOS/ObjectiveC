//
//  BalancedParaenthesis.m
//  Balanced Paranthesis
//
//  Created by ABHISHEK GANGULY on 10/19/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import "BalancedParaenthesis.h"

@implementation BalancedParaenthesis

NSMutableArray *stack;


-(id)init
{
    self = [super init];
    if (self)
    {
        stack = [[NSMutableArray alloc]initWithCapacity:100];
    }
    return (self);
}

//Function for adding the character to stack
-(void)push:(char)charac
{
    id val = [NSNumber numberWithChar:charac];
    [stack addObject:val];
}

//Function for removing the top element of stack
-(char)pop
{
    char charc =[[stack lastObject] charValue];
    [stack removeLastObject];
    return charc;
}

//Function for printing the last element of stack
-(char)peek
{
    char charc = [[[stack lastObject] copy] charValue];
    return charc;
}

//for checking empty or not
-(BOOL)isEmpty
{
    if ([stack count] == 0)
    {
        return YES;
    }
    else
    {
        return NO;
    }
}

//for calculating size of stack
-(int)size
{
    return (int)[stack count];
}

@end
