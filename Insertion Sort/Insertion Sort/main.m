//
//  main.m
//  Insertion Sort
//
//  Created by Abhishek Ganguly on 10/15/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InsertionSort.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        InsertionSort *sort = [[InsertionSort alloc]init];
        
        //Taking user input
        int num;
        NSLog(@"Enter the no. of words to be inserted");
        scanf("%d",&num);
        
        NSMutableArray *ar1 = [[NSMutableArray alloc]initWithCapacity:num];
        
        //Entering the elements into the array
        for (int i=0; i<num; i++)
        {
            char wrd[40];
            NSLog(@"Enter the %d word",i+1);
            scanf("%s",wrd);
            NSString *wrd1 = [NSString stringWithUTF8String:wrd];
            
            [ar1 insertObject:wrd1 atIndex:i];
        }
        
        //Performing the Insertion Sort
        NSMutableArray *ar = [sort doInsertionSort:ar1];
        NSString *list = [ar componentsJoinedByString:@" "];
        NSLog(@"%@",list);
    }
    return 0;
}
