//
//  InsertionSort.m
//  Insertion Sort
//
//  Created by BridgeLabz Solutions LLP  on 10/15/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import "InsertionSort.h"

@implementation InsertionSort

-(NSMutableArray *)doInsertionSort:(NSMutableArray *)array
{
    for (int i=1; i<[array count]; i++)
    {
        id temp = [array objectAtIndex:i];
        int j=i;
        
        while (j>0 && [[array objectAtIndex:j-1] compare:temp]== NSOrderedDescending)
        {
            [array replaceObjectAtIndex:j withObject:[array objectAtIndex:j-1]];
            j--;
        }
        
        [array replaceObjectAtIndex:j withObject:temp];
    }
    
    return array;
}

@end
