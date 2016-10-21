//
//  VendingMachine.m
//  Vending Machine
//
//  Created by BridgeLabz Solutions LLP  on 10/21/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import "VendingMachine.h"

@implementation VendingMachine

-(void)cashMachine:(NSMutableArray *)array
{
    int k = (int)[array count]-1;
    int totalnotes = 0;
    for (int i=k; i>=0; i--)
    {
        if (i==3)
        {
            id val = [array objectAtIndex:i];
            int num = [val intValue];
            int num1 = (num*1000)/1000;
            NSLog(@"%d * 1000 = %d Rs.",num1,(num1*1000));
            totalnotes = totalnotes + num1;
        }
        else if (i==2)
        {
            id val = [array objectAtIndex:i];
            int num = [val intValue];
            int num2 = (num*100)/500;
            
            if ((num2*500)==(num*100))
            {
                NSLog(@"%d * 500 = %d Rs.",num2,(num2*500));
                totalnotes = totalnotes + num2;
            }
            else if ((num2*500)<(num*100) && (num2 != 0))
            {
                int val1 = (num*100);
                int val2 = (num2*500);
                int remaining = val1 - val2;
                int num3 = remaining/100;
                NSLog(@"%d * 500 = %d Rs.",num2,(num2*500));
                NSLog(@"%d * 100 = %d Rs.",num3,(num3*100));
                totalnotes = totalnotes + num2 + num3;
            }
            else
            {
                int num1 = (num*100)/100;
                NSLog(@"%d * 100 = %d Rs.",num1,(num1*100));
                totalnotes = totalnotes + num1;
            }
        }
        else if (i==1)
        {
            id val = [array objectAtIndex:i];
            int num = [val intValue];
            int num2 = (num*10)/50;
            
            if ((num2*50)==(num*10))
            {
                NSLog(@"%d * 50 = %d Rs.",num2,(num2*50));
                totalnotes = totalnotes + num2;
            }
            else if ((num2*50)<(num*10) && (num2 != 0))
            {
                int val1 = (num*10);
                int val2 = (num2*50);
                int remaining = val1 - val2;
                int num3 = remaining/10;
                NSLog(@"%d * 50 = %d Rs.",num2,(num2*50));
                NSLog(@"%d * 10 = %d Rs.",num3,(num3*10));
                totalnotes = totalnotes + num2 + num3;
            }
            else
            {
                int num1 = (num*10)/10;
                NSLog(@"%d * 10 = %d Rs.",num1,(num1*10));
                totalnotes = totalnotes + num1;
            }
        }
        else if (i==0)
        {
            id val = [array objectAtIndex:i];
            int num = [val intValue];
            int num2 = (num*1)/5;
            
            if ((num2*1)==(num*1))
            {
                NSLog(@"%d * 5 = %d Rs.",num2,(num2*5));
                totalnotes = totalnotes + num2;
            }
            else if ((num2*5)<(num*1) && (num2 != 0))
            {
                int val1 = (num*1);
                int val2 = (num2*5);
                int remaining = val1 - val2;
                int num3 = remaining/1;
                NSLog(@"%d * 5 = %d Rs.",num2,(num2*5));
                NSLog(@"%d * 1 = %d Rs.",num3,(num3*1));
                totalnotes = totalnotes + num2 + num3;
            }
            else
            {
                int num1 = (num*1)/1;
                NSLog(@"%d * 1 = %d Rs.",num1,(num1*1));
                totalnotes = totalnotes + num1;
            }
        }
    }
    
    NSLog(@"Total Notes: %d",totalnotes);
}

@end
