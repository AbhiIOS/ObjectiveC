//
//  OrderedList.h
//  Ordered List
//
//  Created by BridgeLabz Solutions LLP  on 10/18/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OrderedList : NSObject
{
    int intData;
    OrderedList *nextAddr;
}

-(id)initOL;
-(void)print1;
-(void)InsertWord:(int)data;
-(void)remove:(int)word;
-(BOOL)search:(int)word;
-(void)print;
-(void) writeToLogFile:(int)content;

@property (readwrite) int intdata;
@property (retain)OrderedList *Nextaddr;

@end
