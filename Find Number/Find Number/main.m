//
//  main.m
//  Find Number
//
//  Created by ABHISHEK GANGULY on 10/17/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FindNumber.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        FindNumber *Fnum = [[FindNumber alloc]init];
        int num;
        NSLog(@"Enter the steps you want");
        scanf("%d",&num);
        
        [Fnum getNumber:num];
    }
    return 0;
}
