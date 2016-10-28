//
//  BinarySearch.m
//  Binary Search
//
//  Created by Abhishek Ganguly on 10/14/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import "BinarySearch.h"

@implementation BinarySearch

//Function for sorting the array
-(NSMutableArray *)doSort:(NSMutableArray *)ary
{
    
    for (int i=1; i<[ary count]; i++)
    {
        id temp = [ary objectAtIndex:i];
        int j=i;
        
        while (j>0 && [[ary objectAtIndex:j-1] compare:temp]== NSOrderedDescending)
        {
            [ary replaceObjectAtIndex:j withObject:[ary objectAtIndex:j-1]];
            j--;
        }
        
        [ary replaceObjectAtIndex:j withObject:temp];
    }
    
    return ary;
}

//Function for Binary search
-(long)doBinarySearch:(NSMutableArray *)ary1 withWord:(NSString *)word
{
    /*NSString *name = [ary1 componentsJoinedByString:@" "];
    NSString *new = [name stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    NSMutableArray *ary2 = [new componentsSeparatedByString:@"\n"];*/
    NSLog(@"%@",ary1);
    long head = 0;
    
    long tail = [ary1 count]-1;
    //NSLog(@"%lu",tail);
    while (head<=tail)
    {
        long mid = (head+tail)/2;
        
       // NSLog(@"%@",[ary1 objectAtIndex:mid]);
        
        
        if ([word compare:[ary1 objectAtIndex:mid]]== NSOrderedSame)
        {
            return mid+1;
        }
        else if ([word compare:[ary1 objectAtIndex:mid]]==NSOrderedAscending)
        {
            tail = mid-1;
        }
        else if ([word compare:[ary1 objectAtIndex:mid]]==NSOrderedDescending)
        {
            head = mid+1;
        }
    }
    
    return 0;
}

@end
