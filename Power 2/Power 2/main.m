//
//  main.m
//  Power 2
//
//  Created by BridgeLabz Solutions LLP  on 10/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PowerOf2.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        PowerOf2 *pow = [[PowerOf2 alloc]init];
        
        int num;
        NSLog(@"Enter the value of power");
        scanf("%d",&num);
        
        if (num<=0)
        {
            while (num<=0)
            {
                NSLog(@"Please enter the value greater than 0");
                scanf("%d",&num);
            }
        }
        
        if (num>31)
        {
            while (num>31)
            {
                NSLog(@"Please enter the value lesser than 31");
                scanf("%d",&num);
            }
        }
        [pow power:num];
    }
    return 0;
}
