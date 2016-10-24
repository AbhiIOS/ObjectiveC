//
//  LinkedList.h
//  Hashing Algorithm
//
//  Created by BridgeLabz Solutions LLP  on 10/24/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"

@interface LinkedList : NSObject

{
    Node *head;
}
@property(strong) Node *head;
-(void)add:(int)data;
-(id)remove;
-(void)display;
-(int)search:(int)value;
-(void)remove:(int)value;
@end
