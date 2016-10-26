//
//  Queue.m
//  Bank Cash Counter2
//
//  Created by BridgeLabz Solutions LLP  on 10/26/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import "Queue.h"

@implementation Queue
@synthesize head;
//function to add to the queue
-(void)add:(NSString*)data amount:(int)amount{
    Node *newNode =[[Node alloc] initNodeWithValue:data balance:amount];
    if(head == nil){
        head=newNode;
    }
    else{
        Node  *lastNode=head;
        
        while (lastNode.next!=nil) {
            lastNode=lastNode.next;
        }
        lastNode.next = newNode;
        
    }
    
    NSLog(@" no sufficient balance added to queue");
}

//function to return top value of the queue
-(int)top{
    
    int bal=head.balance;
    return bal;
}




-(id)remove
{
    Node *temp=head;
    if (head.next != nil)
    {
        Node *currentNode = head.next;
        head.next = nil;
        head = currentNode;
    }
    else{
        head = nil;
    }
    return temp;
}

-(BOOL)isempty
{
    if (head == nil)
    {
        return true;
    }
    else{
        
        return false;
    }
}

@end
