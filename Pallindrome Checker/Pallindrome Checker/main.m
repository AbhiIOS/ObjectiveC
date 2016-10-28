//
//  main.m
//  Pallindrome Checker
//
//  Created by BridgeLabz Solutions LLP  on 10/20/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pallindrome.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Pallindrome *dequeue = [[Pallindrome alloc]init];
        
        //Taking user input
        char wrd[40];
        NSLog(@"Enter a word");
        scanf("%s",wrd);
        NSString *actWrd = [NSString stringWithUTF8String:wrd];

        for (int i=0; i<actWrd.length; i++)
        {
             char val = [actWrd characterAtIndex:i];
            [dequeue addRear:val];
        }
        
        [dequeue checkPalWith:actWrd];
    }
    return 0;
}
