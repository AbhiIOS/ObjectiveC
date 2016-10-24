//
//  Node.m
//  Hashing Algorithm
//
//  Created by BridgeLabz Solutions LLP  on 10/24/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import "Node.h"

@implementation Node

@synthesize data,next;


-(id) initNodeWithValue:(int)value
{
    self = [super init];
    data=value;
    next = nil;
    return self;
}

@end
