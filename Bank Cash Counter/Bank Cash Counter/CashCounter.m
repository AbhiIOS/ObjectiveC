//
//  CashCounter.m
//  Bank Cash Counter
//
//  Created by ABHISHEK GANGULY on 10/19/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import "CashCounter.h"

@implementation CashCounter

@synthesize money = intData;
@synthesize Nextaddr = nextAddr;

CashCounter *head = NULL;
CashCounter *newNode;

-(id)initCap
{
    self = [super init];
    if (self)
    {
        nextAddr = NULL;
    }
    return (self);
}

-(void)enqueue:(int)item
{
    newNode = [[CashCounter alloc]initCap];
    if (head == NULL)
    {
        newNode.money = item;
        head = newNode;
        NSLog(@"Money successfully Deposited");
    }
    else
    {
        newNode.money = item;
        newNode.Nextaddr = head;
        head = newNode;
        NSLog(@"Money successfully Deposited");
    }
}

-(void)dequeue
{
    CashCounter *temp = head;
    if ([self size]==1)
    {
        int num = temp.money;
        NSLog(@"Rs. %d successfully Withdrawn",num);
        temp.money = 0;
    }
    else
    {
        while (temp.Nextaddr.Nextaddr != NULL)
        {
            temp = temp.Nextaddr;
        }
        
        int actualMoney = temp.Nextaddr.money;
        temp.Nextaddr = NULL;
        NSLog(@"Rs. %d successfully Withdrawn",actualMoney);
    }
    
}

-(BOOL)isEmpty
{
    int count = 0;
    CashCounter *temp = head;
    while (temp.Nextaddr != NULL)
    {
        temp = temp.Nextaddr;
        count+=1;
    }
    
    if (count == 0)
    {
        return YES;
    }
    else
    {
        return NO;
    }
}

-(int)size
{
    int count = 0;
    if (head.Nextaddr == NULL)
    {
        count+=1;
        return count;
        
    }
    else
    {
        CashCounter *temp = head;
        while (temp.Nextaddr != NULL)
        {
            temp = temp.Nextaddr;
            count+=1;
        }
        
        if (count == 0)
        {
            return count;
        }
        else
        {
            int finalcount = count+1;
            return finalcount;
        }
    }
}

-(void)deposit:(int)money
{
    [self enqueue:money];
}

-(void)withdraw
{
    [self dequeue];
}

@end
