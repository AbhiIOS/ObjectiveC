//
//  main.m
//  Factors
//
//  Created by Abhishek Ganguly on 10/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Factors.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Factors *fact = [[Factors alloc]init];
        
        //Taking user input
        int num;
        
        NSLog(@"Enter a number to find prime Factors");
        scanf("%d",&num);
        
        //calling function
        [fact getFactors:num];
        
        
    }
    return 0;
}
