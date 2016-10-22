//
//  main.m
//  Stopwatch
//
//  Created by BridgeLabz Solutions LLP  on 10/22/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int num;
        NSLog(@"Press 1 to start");
        scanf("%d",&num);
        double endTime;
        double startTime;
        if (num == 1)
        {
            startTime = [[NSDate date] timeIntervalSinceReferenceDate];
            NSLog(@"%f",startTime);
        }
        
        int num1;
        NSLog(@"Press 2 to stop");
        scanf("%d",&num1);
        if (num1 == 2)
        {
            endTime = [[NSDate date] timeIntervalSinceReferenceDate];
            NSLog(@"%f",endTime);
        }
        
        
        double elapsedTime = endTime - startTime;
        
        NSLog(@"time: %f", elapsedTime);
        
    }
    return 0;
}
