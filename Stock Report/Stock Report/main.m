//
//  main.m
//  Stock Report
//
//  Purpose:
//  1. Taking input Stock
//  2. print a Stock Report with total value of each Stock and the total value of Stock.
//
//  Created by Abhishek Ganguly on 10/13/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Stock.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Stock *stck = [[Stock alloc]init];  // Creating Object of Stock class
        int num;
        NSLog(@"Enter the No. of stocks");
        scanf("%d",&num);                   // Taking inputs from user
        
        [stck entry:num];                   // Calling instance Function "entry"
        [stck calculate:num];               // calling instance Function "calculate"
        [stck allTotal:num];                // calling instance Function "allTotal"
    }
    return 0;
}
