//
//  OrderedList.m
//  Ordered List
//
//  Created by Abhishek Ganguly on 10/18/16.
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
        newNode.intdata = data;
        head = newNode;
        
    }
    else
    {
        OrderedList *temp = head;
        if (head.intdata > data){
            newNode.intdata = data;
            newNode.Nextaddr = temp;
            head = newNode;
        }
        else {
        while (temp.Nextaddr != NULL)
        {
            if (data < temp.intdata)
            {
                newNode.intdata = data;
                newNode.Nextaddr = temp;
                break;
            }
            else if (data > temp.intdata && data < temp.Nextaddr.intdata)
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

-(void)print
{
    OrderedList *temp = head;
    while (temp != NULL)
    {
        int num = temp.intdata;
        NSLog(@"%d",num);
        temp = temp.Nextaddr;
    }
}

-(void) writeToLogFile:(int)content
{
    NSString *content2 = [NSString stringWithFormat:@"%d\n",content];
    
    NSFileHandle *fileHandle = [NSFileHandle fileHandleForWritingAtPath:@"/Users/bridgelabz/Desktop/file.txt"];
    
    if (content == head.intdata){
        [content2 writeToFile:@"/Users/bridgelabz/Desktop/file.txt"
                   atomically:YES
                     encoding:NSStringEncodingConversionAllowLossy
                        error:nil];
    }
    else if (fileHandle){
        [fileHandle seekToEndOfFile];
        [fileHandle writeData:[content2 dataUsingEncoding:NSUTF8StringEncoding]];
        [fileHandle closeFile];
    }
    
}

-(void)print1
{
    
    if (head.Nextaddr == NULL)
    {
        [self writeToLogFile:head.intdata];
    }
    else
    {
        OrderedList *temp = head;
        while (temp.Nextaddr != NULL)
        {
            [self writeToLogFile:temp.intdata];
            temp = temp.Nextaddr;
        }
        
        [self writeToLogFile:temp.intdata];
        NSLog(@"File updated");
    }
}


@end
