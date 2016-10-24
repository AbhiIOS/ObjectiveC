//
//  main.m
//  Hashing Algorithm
//
//  Created by BridgeLabz Solutions LLP  on 10/24/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LinkedList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableArray *array=[[NSMutableArray alloc]init];
        
        NSString* path = @"/Users/bridgeit/Desktop/mac/Hashing/file.txt";
        NSString* fileContents =
        [NSString stringWithContentsOfFile:path
                                  encoding:NSUTF8StringEncoding error:nil];
        // seperating strings with respect to whitespace and newline character
        NSArray* allLinedStrings =
        [fileContents componentsSeparatedByCharactersInSet:
         [NSCharacterSet whitespaceAndNewlineCharacterSet]];
        
        NSMutableArray* array2=[NSMutableArray arrayWithArray:allLinedStrings];
        for (int i=0;i<11; i++) {
            
            LinkedList *obj=[[LinkedList alloc]init];
            [array addObject:obj];
            
        }
        
        
        for (int i=0; i<[array2 count]; i++) {
            
            id key=[array2 objectAtIndex:i];
            
            int value=[key intValue];
            int rem=value%11;
            LinkedList *obj = [array objectAtIndex:rem];
            [obj add:value];
            
        }
        int num;
        
        NSLog(@"enter a number to be searched");
        scanf("%d",&num);
        int rem1=num%11;
        LinkedList *obj = [array objectAtIndex:rem1];
        
        int value=  [obj search:num];
        if (value==1) {
            NSLog(@"found");
            [obj remove:num];
        }
        
        else
        {
            
            [obj add:num];
            NSLog(@"not found");
        }
        
        for (int i=0; i<11; i++) {
            NSLog(@"slot number : %d",i);
            LinkedList *obj = [array objectAtIndex:i];
            
            
            [obj display];
            
        }

    }
    return 0;
}
