//
//  main.m
//  LeapYear
//
//  Created by BridgeLabz Solutions LLP  on 10/10/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int year;
        NSLog(@"Enter the year");
        scanf("%d",&year);
        int count = 0;
        int num=year;
        while (num>0)
        {
            num = num/10;
            count++;
        }
        
        while(count!=4)
        {
            int count1 =0;
            while (count1!=4)
            {
                count1=0;
                NSLog(@"Enter the 4-digit year");
                scanf("%d",&year);
                
                int num=year;
                while (num>0)
                {
                    num = num/10;
                    count1=count1+1;
                }
                
            }
            count=count1;

        }
        
            if (((year%4==0) && (year%100!=0))||(year%400==0))
            {
                NSLog(@"%d is a Leap Year",year);
            }
            else
            {
                NSLog(@"%d is not a Leap Year",year);
            }

        
            }
    return 0;
}
