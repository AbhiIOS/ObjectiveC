//
//  Pallindrome.m
//  Pallindrome Checker
//
//  Created by ABHISHEK GANGULY on 10/20/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import "Pallindrome.h"

@implementation Pallindrome

@synthesize charac = charData;
@synthesize nextAddr = nextaddr;

Pallindrome *head = NULL;
Pallindrome *newNode;

// User Defined Constructer
-(id)initPal
{
    self = [super init];
    if (self)
    {
        nextaddr = NULL;
    }
    
    return (self);
}

// ADDING THE ELEMNTS TO THE FRONT OF THE QUEUE(LINKED LIST)
-(void)addFront:(char)item
{
    newNode = [[Pallindrome alloc]initPal];
    
    //Condition for if adding the very first element in the queue
    if (head == NULL)
    {
        newNode.charac = item;
        head = newNode;
    }
    else
    {
        //condition for add elememt if queue is having only 1 element
        if (head.nextAddr == NULL)
        {
            newNode.charac = item;           //Assigning data to node
            head.nextAddr = newNode;         //Assigning next element's addr to head
        }
        else
        {
            //condition for add element if queue is having multiple element
            Pallindrome *temp = head;
            while (temp.nextAddr != NULL)    //Traversing through every element
            {
                temp = temp.nextAddr;
            }
            
            newNode.charac = item;
            temp.nextAddr = newNode;         //Assigning newnode addr to last node

        }
    }
}

//adding elements to rear
-(void)addRear:(char)item
{
    newNode = [[Pallindrome alloc]initPal];
    
    newNode.charac = item;
    newNode.nextAddr = head;
    head = newNode;
}

//Adding elements to front
-(char)removeFront
{
    if (head.nextAddr == NULL)
    {
        char val1 = head.charac;
        //head.charac = NULL;
        return val1;
    }
    else
    {
        Pallindrome *temp = head;
        while (temp.nextAddr.nextAddr != NULL)
        {
            temp = temp.nextAddr;
        }
        
        char val = temp.nextAddr.charac;
        temp.nextAddr = NULL;
        return val;
    }
}

//Remove from rear
-(char)removeRear
{
    Pallindrome *temp = head.nextAddr;
     char num = head.charac;
    head.nextAddr = NULL;
    head = temp;
    
    return num;
}

-(BOOL)isEmpty
{
    int count = 0;
    if (head.nextAddr == NULL)
    {
        count+=1;
    }
    else
    {
        Pallindrome *temp = head;
        while (temp.nextAddr != NULL)
        {
            temp = temp.nextAddr;
            count+=1;
        }

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

//to get size
-(int)size
{
    int count = 0;
    if (head.nextAddr == NULL)
    {
        count+=1;
        return count;
        
    }
    else
    {
        Pallindrome *temp = head;
        while (temp.nextAddr != NULL)
        {
            temp = temp.nextAddr;
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

//function for checking pallindrome
-(void)checkPalWith:(NSString *)word
{
    NSMutableArray *array = [[NSMutableArray alloc]initWithCapacity:100];
    int length = (int)word.length;
   // NSMutableArray *array1 = [[NSMutableArray alloc]initWithCapacity:length];
    int count = 0;
    Pallindrome *temp = head;
    if (head.nextAddr == NULL)
    {
        char data = head.charac;
        id data1 = [NSNumber numberWithChar:data];
        [array addObject:data1];
    }
    else
    {
        while (temp.nextAddr != NULL)
        {
            char data = temp.charac;
            id data1 = [NSNumber numberWithChar:data];
            [array addObject:data1];
            temp = temp.nextAddr;
        }
        
        char data = temp.charac;
        id data1 = [NSNumber numberWithChar:data];
        [array addObject:data1];
    }
    
    for (int i=0 ; i<[array count]; i++)
    {
        char num1 = [[array objectAtIndex:i] charValue];
        char num2 = [word characterAtIndex:i];
        if (num1 == num2) {
            count+=1;
        }
    }
    
    if (count == length)
    {
        NSLog(@"%@ is a Pallindrome",word);
    }
    else
    {
        NSLog(@"%@ is not a pallindrome",word);
    }
    
}


@end
