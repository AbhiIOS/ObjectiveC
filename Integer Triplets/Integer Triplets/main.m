//
//  main.m
//  Integer Triplets
//
//  Created by BridgeLabz Solutions LLP  on 10/17/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Triplets.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Triplets *triple = [[Triplets alloc]init];
        int num;
        NSLog(@"Enter the no. of integer to be inserted");
        scanf("%d",&num);
        
        NSMutableArray *array = [[NSMutableArray alloc]initWithCapacity:num];
        
        for (int i=0; i<num; i++)
        {
            int num1;
            NSLog(@"Enter the %d element",i+1);
            scanf("%d",&num1);
            NSLog(@"%d",num1);
            id newNum = [NSNumber numberWithInt:num1];
            [array insertObject:newNum atIndex:i];
        }
        
        [triple findTriplet:array];
        
    }
    return 0;
}
