//
//  UnorderedLinkedList.h
//  Unordered LinkedList
//
//  Created by BridgeLabz Solutions LLP  on 10/18/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UnorderedLinkedList : NSObject
{
    NSString *stringData;
    UnorderedLinkedList *nextAddr;
}

-(id)init:(NSString *)word;
-(void)print;
-(void)InsertWord:(NSString *)data;
-(void)remove:(NSString *)word;
-(BOOL)search:(NSString *)word;
-(void) writeToLogFile:(NSString*)content;

@property (readwrite) NSString *stringdata;
@property (retain)UnorderedLinkedList *Nextaddr;

@end
