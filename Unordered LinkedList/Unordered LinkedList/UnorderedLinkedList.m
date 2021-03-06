//
//  UnorderedLinkedList.m
//  Unordered LinkedList
//
//  Created by BridgeLabz Solutions LLP  on 10/18/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import "UnorderedLinkedList.h"

@implementation UnorderedLinkedList
@synthesize stringdata = stringData;
@synthesize Nextaddr = nextAddr;

UnorderedLinkedList *head = NULL;
UnorderedLinkedList *newNode;

-(id)init:(NSString *)word
{
    self = [super init];
    if (self)
    {
        stringData = word;
        nextAddr = NULL;
    }
    return (self);
}

-(void)InsertWord:(NSString *)data
{
    newNode = [[UnorderedLinkedList alloc]init:data];
    
    if (head == NULL)
    {
        head = newNode;
        //[self writeToLogFile:head.stringdata];
        
    }
    else
    {
        UnorderedLinkedList *temp = head;
        while (temp.Nextaddr != NULL)
        {
            temp = temp.Nextaddr;
        }
        
        temp.Nextaddr = newNode;
    }
}

-(void)remove:(NSString *)word
{
    UnorderedLinkedList *currentcode = head.Nextaddr;
    UnorderedLinkedList *previouscode = head;
    
    if (head.stringdata == word)
    {
        head = head.Nextaddr;
        NSLog(@"%@ removed",word);
    }
    else
    {
        while (currentcode.Nextaddr != NULL)
        {
            if (currentcode.stringdata == word)
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
        
        if (currentcode.stringdata == word && currentcode.Nextaddr == NULL)
        {
            previouscode.Nextaddr = NULL;
        }
    }
}

-(BOOL)search:(NSString *)word
{
    UnorderedLinkedList *currentcode = head;
    while (currentcode.Nextaddr != NULL)
    {
        if (currentcode.stringdata == word)
        {
            NSLog(@"%@ found",word);
            return YES;
        }
        currentcode = currentcode.Nextaddr;
    }
    
    if (currentcode.stringdata == word)
    {
        return YES;
    }
    return NO;
}

-(void) writeToLogFile:(NSString*)content
{
    NSString *content2 = [NSString stringWithFormat:@"%@\n",content];
    
    NSFileHandle *fileHandle = [NSFileHandle fileHandleForWritingAtPath:@"/Users/bridgelabz/Desktop/file.txt"];
    
    if (content == head.stringdata){
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

-(void)print
{
    
    if (head.Nextaddr == NULL)
    {
        [self writeToLogFile:head.stringdata];
    }
    else
    {
        UnorderedLinkedList *temp = head;
        while (temp.Nextaddr != NULL)
        {
            [self writeToLogFile:temp.stringdata];
            temp = temp.Nextaddr;
        }
        
        [self writeToLogFile:temp.stringdata];
        NSLog(@"File updated");
    }
    }
@end
