//
//  main.m
//  Anagram2
//
//  Created by BridgeLabz Solutions LLP  on 10/13/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Anagram.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Anagram *angram = [[Anagram alloc]init];
        
        char str1[20];
        char str2[20];
        
        NSLog(@"Enter the first word");
        scanf("%s",str1);
        NSLog(@"Enter the second word");
        scanf("%s",str2);
        
        NSString *string1 = [NSString stringWithCString:str1 encoding:1];
        NSString *string2 = [NSString stringWithCString:str2 encoding:1];
        
        BOOL decsion =[angram anagram:string1 withString:string2];
        
        if (decsion == YES)
        {
            NSLog(@"It is an Anagram");
        }
        else
        {
            NSLog(@"It is not an Anagram");
        }

    }
    return 0;
}
