//
//  CashCounter.h
//  Bank Cash Counter
//
//  Created by BridgeLabz Solutions LLP  on 10/19/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CashCounter : NSObject
{
    int intData;
    CashCounter *nextAddr;
}

-(id)initCap;
-(void)enqueue:(int)item;
-(void)dequeue;
-(BOOL)isEmpty;
-(int)size;
-(void)deposit:(int)money;
-(void)withdraw;

@property (readwrite) int money;
@property (retain)CashCounter *Nextaddr;

@end
