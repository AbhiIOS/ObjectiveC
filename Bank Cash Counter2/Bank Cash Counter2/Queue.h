//
//  Queue.h
//  Bank Cash Counter2
//
//  Created by BridgeLabz Solutions LLP  on 10/26/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"
@interface Queue : NSObject
{
    Node *head;
    
}
@property(strong) Node *head;
-(void)add:(NSString*)data amount:(int)amount;
-(int)top;
-(id)remove;
-(void)deposit:(int)amount operation:(NSString*)operation;
-(BOOL)isempty;
//-(int)search:(NSString*)word;


@end
