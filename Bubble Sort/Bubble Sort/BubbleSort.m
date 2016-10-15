//
//  BubbleSort.m
//  Bubble Sort
//
//  Created by BridgeLabz Solutions LLP  on 10/15/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import "BubbleSort.h"

@implementation BubbleSort

-(NSMutableArray *)doBubbleSort:(NSMutableArray *)array
{
    for (int i=0; i<[array count]; i++)
    {
        for (int j=0; j<[array count]-1; j++)
        {
            if ([[array objectAtIndex:j] compare:[array objectAtIndex:j+1]]==NSOrderedDescending)
            {
                id temp = [array objectAtIndex:j+1];
                [array replaceObjectAtIndex:j+1 withObject:[array objectAtIndex:j]];
                [array replaceObjectAtIndex:j withObject:temp];
            }
        }
    }
    
    return array;
}

@end
