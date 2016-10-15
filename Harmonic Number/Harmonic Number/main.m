//
//  main.m
//  Harmonic Number
//
//  Created by BridgeLabz Solutions LLP  on 10/12/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HarmonicNumber.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        HarmonicNumber *harNum = [[HarmonicNumber alloc]init];
        int num;
        
        NSLog(@"Enter the Harmonic value");
        scanf("%d",&num);
        
        if (num==0)
        {
            while (num==0)
            {
                NSLog(@"Please Enter the value greater than 0");
                scanf("%d",&num);
            }
        }
        
        [harNum getHarmonicNumber:num];
    }
    return 0;
}
