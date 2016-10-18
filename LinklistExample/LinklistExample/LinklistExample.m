//
//  LinklistExample.m
//  LinklistExample
//
//  Created by BridgeLabz Solutions LLP  on 10/18/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import "LinklistExample.h"

@implementation LinklistExample
@synthesize currentValue = mCurrentValue;
@synthesize next = mNext;

#define kNotYetSet NSIntegerMin

-(id) init
{
    self= [super init];
    
    if(self)
    {
        mCurrentValue = kNotYetSet;
        mNext = NULL;
    }
    return(self);
}

//-------------------------------------------------------------------
//inserting elements in linklist
-(void) insert:(NSInteger)valueToInsert
{
    // look at the next value (if it exists) and see if there is the right place to insert a new LinkedList node
    LinklistExample * nextNode = self.next;
    LinklistExample * newNode;
    
    if(self.currentValue == kNotYetSet)
    {
        self.currentValue = valueToInsert;
        return;
    }
    
    if(valueToInsert < self.currentValue)
    {
        newNode = [[LinklistExample alloc] init];
        if(newNode)
        {
            newNode.currentValue = self.currentValue;
            NSLog(@"%ld",(long)self.currentValue);
            newNode.next = self.next;
            self.currentValue = valueToInsert;
            self.next = newNode;
        }
        return;
    }
    
    if(nextNode == NULL)
    {
        // nothing is next, so this is the place to insert the new LinkedList node
        newNode = [[LinklistExample alloc] init];
        if(newNode)
        {
            newNode.currentValue = valueToInsert;
            // no need to reset "next" for the newNode, since this is the new tail of the LinkedList
            self.next = newNode;
            return;
        }
    }
    else
    {
        // see if the value we're trying to insert fits between the current and the next value
        if((valueToInsert >= self.currentValue) && (valueToInsert < nextNode.currentValue))
        {
            newNode = [[LinklistExample alloc] init];
            if(newNode)
            {
                newNode.currentValue = valueToInsert;
                newNode.next = nextNode;
                self.next = newNode;
            }
        }
        else
        {
            [nextNode insert: valueToInsert];
        }
    }
}



//----------------------------------------------------------------
//searching element
//-(int) searchElement:(NSInteger)data
//{
//    
//    LinklistExample *nextNode = NULL;
//    int flag=1;
//    while(self != NULL)
//    {
//        // if found then deleted from list
//        if(data == self.currentValue)
//        {
//            NSLog(@"match element is %ld",self.currentValue);
//            nextNode.next =self.next;
//            flag = 0;
//            //self.next =self.next.next;
//            break;
//        }
//        nextNode=self;
//        self = self.next;
//    }
//    return (flag);
//}


//------------------------------------------------------------------
//printing all elements
-(void) print
{
    LinklistExample * nextNode = self.next;
    NSLog( @"%ld", self.currentValue);
    if(nextNode)
    {
        // keep going down the list
        [nextNode print];
    }
}
@end
