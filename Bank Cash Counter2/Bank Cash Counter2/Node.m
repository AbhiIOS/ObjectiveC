//
//  Node.m
//  Bank Cash Counter2
//
//  Created by Abhishek Ganguly on 10/26/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import "Node.h"

@implementation Node

@synthesize data,next,balance;

-(id) initNodeWithValue:(NSString*)string balance:(int)amount{
    self = [super init];
    data=string;
    next = nil;
    balance=amount;
    return self;
}

@end
