//
//  Node.h
//  Hashing Algorithm
//
//  Created by BridgeLabz Solutions LLP  on 10/24/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject
{
    int data;
    Node *next;
}
@property(readwrite) int data;
@property (retain) Node *next;
-(id)initNodeWithValue:(int)data;

@end
