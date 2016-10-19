//
//  main.m
//  Balanced Paranthesis
//
//  Created by BridgeLabz Solutions LLP  on 10/19/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BalancedParaenthesis.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BalancedParaenthesis *stck = [[BalancedParaenthesis alloc] init];
        char exp[100];
        NSLog(@"Enter the expression");
        scanf("%s",exp);
        NSString *expre = [NSString stringWithUTF8String:exp];
        //NSMutableArray *expr = [NSMutableArray arrayWithContentsOfFile:expre ];
        
        for (int i=0; i<[expre length]; i++)
        {
             char alpha =[expre characterAtIndex:i];
            
            if((alpha == '(') || (alpha=='{') || (alpha=='['))
            {
                [stck push:alpha];
            }
            
            if ((alpha == ')') || (alpha == '}') || (alpha == ']'))
            {
                char val = [stck peek];
                if (val == '(' && alpha == ')')
                {
                    [stck pop];
                }
                else if (val == '{' && alpha == '}')
                {
                    [stck pop];
                }
                else if (val == '[' && alpha == ']')
                {
                    [stck pop];
                }
            }
        }
        
        if ([stck isEmpty])
        {
            NSLog(@"Arithmetic Expression is Balanced");
        }
        else
        {
            NSLog(@"Arithmetic Expression is not Balanced");
        }
        
    }
    return 0;
}
