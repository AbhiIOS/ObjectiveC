//
//  main.m
//  Vending Machine
//
//  Created by BridgeLabz Solutions LLP  on 10/21/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VendingMachine.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        VendingMachine *mach = [[VendingMachine alloc]init];
        NSMutableArray *arr1 = [[NSMutableArray alloc]initWithCapacity:4];
        int num, num1;
        id input1;
        NSLog(@"Enter the Amount");
        scanf("%d",&num);
        
        int count =0;
        int temp = num;
        while (temp!=0)
        {
            temp = temp/10;
            count+=1;
        }
        NSLog(@"%d",count);
        if (count>4)
        {
            num1 = num/1000;
            input1 = [NSNumber numberWithInt:num1];
            num = num%1000;
        }
        
        
        temp = num;
        for (int i=0; i<4; i++)
        {
            if (count>4)
            {
                if (i==0)
                {
                    [arr1 insertObject:input1 atIndex:i];
                }
                else
                {
                    int num4 = temp%10;
                    id input2 = [NSNumber numberWithInt:num4];
                    [arr1 insertObject:input2 atIndex:i];
                    temp = temp/10;
                }

            }
            else
            {
                int num4 = temp%10;
                id input2 = [NSNumber numberWithInt:num4];
                [arr1 insertObject:input2 atIndex:i];
                temp = temp/10;
            }
            
        }
    
        [mach cashMachine:arr1];
    }
    return 0;
}
