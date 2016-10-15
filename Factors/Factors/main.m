//
//  main.m
//  Factors
//
//  Created by BridgeLabz Solutions LLP  on 10/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Factors.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Factors *fact = [[Factors alloc]init];
        
        int num;
        
        NSLog(@"Enter a number to find prime Factors");
        scanf("%d",&num);
        
        [fact getFactors:num];
        
        
    }
    return 0;
}
