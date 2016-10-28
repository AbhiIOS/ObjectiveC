//
//  main.m
//  Anagram2
//
//  Created by Abhishek Ganguly on 10/13/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Anagram.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Anagram *angram = [[Anagram alloc]init];
        NSMutableArray *ar1 = [[NSMutableArray alloc]init];
        NSMutableArray *ar2 = [[NSMutableArray alloc]init];
        
        char str1[20];
        char str2[20];
        
        //Taking first word from user
        NSLog(@"Enter the first word");
        scanf("%s",str1);
        
        //Taking second word from user
        NSLog(@"Enter the second word");
        scanf("%s",str2);
        
        NSString *string1 = [NSString stringWithCString:str1 encoding:1];
        NSString *string2 = [NSString stringWithCString:str2 encoding:1];
        
        //inserting characters of string to array
        for (long i=0; i<[string1 length]; i++)
        {
            id val = [NSNumber numberWithChar:str1[i]];
            [ar1 insertObject:val atIndex:i];
        }
        
        for (long j=0; j<[string2 length]; j++)
        {
            id val1 = [NSNumber numberWithChar:str2[j]];
            [ar2 insertObject:val1 atIndex:j];
        }
        
        //Checking two strings are anangram or not
        BOOL decsion =[angram anagram:ar1 withString:ar2];
        
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
