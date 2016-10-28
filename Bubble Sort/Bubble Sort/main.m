//
//  main.m
//  Bubble Sort
//
//  Created by Abhishek Ganguly on 10/15/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BubbleSort.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BubbleSort *sort = [[BubbleSort alloc]init];
        
        //Taking user input
        int num;
        NSLog(@"Enter the no. of integer to be inserted");
        scanf("%d",&num);
        
        NSMutableArray *arr1 = [[NSMutableArray alloc]initWithCapacity:num];
        
        //Entering the elements into the array
        for(int i=0; i<num; i++)
        {
            int val;
            NSLog(@"Enter the %d integer",i+1);
            scanf("%d",&val);
            id num = [NSNumber numberWithInt:val];
            [arr1 insertObject:num atIndex:i];
        }
        
        //Performing Bubble Sort
        NSMutableArray *arr2 = [sort doBubbleSort:arr1];
        NSString *str = [arr2 componentsJoinedByString:@" "];
        NSLog(@"%@",str);
    }
    return 0;
}
