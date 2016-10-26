//
//  Node.h
//  Bank Cash Counter2
//
//  Created by BridgeLabz Solutions LLP  on 10/26/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject

{
    NSString *data;
    int balance;
    Node *next;
}
@property(readwrite) NSString* data;
@property (retain) Node *next;
@property(readwrite) int balance;
-(id) initNodeWithValue:(NSString*)string balance:(int)amount;

@end
