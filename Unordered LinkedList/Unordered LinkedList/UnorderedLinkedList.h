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
-(void)InsertWord:(NSString *)data;
-(void)remove:(NSString *)word;
-(BOOL)search:(NSString *)word;

@property (readwrite) NSString *stringdata;
@property (retain)UnorderedLinkedList *Nextaddr;

@end
