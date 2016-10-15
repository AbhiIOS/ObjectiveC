//
//  main.m
//  Insertion Sort
//
//  Created by BridgeLabz Solutions LLP  on 10/15/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InsertionSort.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        InsertionSort *sort = [[InsertionSort alloc]init];
        
        int num;
        NSLog(@"Enter the no. of words to be inserted");
        scanf("%d",&num);
        
        NSMutableArray *ar1 = [[NSMutableArray alloc]initWithCapacity:num];
        
        for (int i=0; i<num; i++)
        {
            char wrd[40];
            NSLog(@"Enter the %d word",i+1);
            scanf("%s",wrd);
            NSString *wrd1 = [NSString stringWithUTF8String:wrd];
            
            [ar1 insertObject:wrd1 atIndex:i];
        }
        
        NSMutableArray *ar = [sort doInsertionSort:ar1];
        NSString *list = [ar componentsJoinedByString:@" "];
        NSLog(@"%@",list);
    }
    return 0;
}
