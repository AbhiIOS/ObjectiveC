//
//  OrderedList.m
//  Ordered List
//
//  Created by BridgeLabz Solutions LLP  on 10/18/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import "OrderedList.h"

@implementation OrderedList
@synthesize intdata = intData;
@synthesize Nextaddr = nextAddr;

OrderedList *head = NULL;
OrderedList *newNode;

-(id)initOL
{
    self = [super init];
    if (self)
    {
        nextAddr = NULL;
    }
    return (self);
}

-(void)InsertWord:(int)data
{
    newNode = [[OrderedList alloc]initOL];
    
    if (head == NULL)
    {
        head = newNode;
        
    }
    else
    {
        OrderedList *temp = head;
        while (temp.Nextaddr != NULL)
        {
            if (data < temp.intdata)
            {
                newNode.intdata = data;
                newNode.Nextaddr = temp;
                break;
            }
            else if (data > temp.intdata)
            {
                newNode.intdata = data;
                newNode.Nextaddr = temp.Nextaddr;
                temp.Nextaddr = newNode;
                break;
            }
            temp = temp.Nextaddr;
        }
        
        if (newNode.Nextaddr == NULL && data > temp.intdata)
        {
            newNode.intdata = data;
            temp.Nextaddr = newNode;
        }
        else
        {
            newNode.intdata = data;
            newNode.Nextaddr = temp;
        }
        
    }
}

-(void)remove:(int)word
{
    OrderedList *currentcode = head.Nextaddr;
    OrderedList *previouscode = head;
    
    if (head.intdata == word)
    {
        head = head.Nextaddr;
        NSLog(@"%d removed",word);
    }
    else
    {
        while (currentcode.Nextaddr != NULL)
        {
            if (currentcode.intdata == word)
            {
                previouscode.Nextaddr = currentcode.Nextaddr;
                NSLog(@"Word removed");
                break;
            }
            else
            {
                previouscode = currentcode;
                currentcode = currentcode.Nextaddr;
            }
        }
        
        if (currentcode.intdata == word && currentcode.Nextaddr == NULL)
        {
            previouscode.Nextaddr = NULL;
        }
    }
}

-(BOOL)search:(int)word
{
    OrderedList *currentcode = head;
    while (currentcode.Nextaddr != NULL)
    {
        if (currentcode.intdata == word)
        {
            NSLog(@"%d found",word);
            return YES;
        }
        currentcode = currentcode.Nextaddr;
    }
    
    if (currentcode.intdata == word)
    {
        return YES;
    }
    return NO;
}


@end
