//
//  main.m
//  Binary Search
//
//  Created by BridgeLabz Solutions LLP  on 10/14/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BinarySearch.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSData *path = [NSData dataWithContentsOfFile:@"/Users/bridgelabz/Desktop/Data.txt"];
        NSString *lines = [[NSString alloc]initWithBytes:[path bytes] length:[path length] encoding:NSUTF8StringEncoding];
        
        NSString *delimiter = @"\n";
        NSString *delimiter2 =@" ";
        
        NSArray *arr = [lines componentsSeparatedByString:delimiter];
        
        NSArray *tempArray = [[NSArray alloc]init];
        
        for (int k=0; k<[arr count]; k++)
        {
            NSArray *ary = [[arr objectAtIndex:k] componentsSeparatedByString:delimiter2];
            tempArray = [tempArray arrayByAddingObjectsFromArray:ary];
        }
        
        NSMutableArray *array = [NSMutableArray arrayWithArray:tempArray];
        
        BinarySearch *search = [[BinarySearch alloc]init];
        
        char name[40];
        NSLog(@"Enter the the word to be searched");
        scanf("%s",name);
        NSString *str = [NSString stringWithUTF8String:name];
        
        NSMutableArray *temp = [search doSort:array];
        NSString *string = [temp componentsJoinedByString:@" "];
        NSLog(@"%@",string);
        long val = [search doBinarySearch:temp withWord:str];
        
        if (val==0)
        {
            NSLog(@"%@ is not present in the list",str);
        }
        else
        {
            NSLog(@"%@ is present in %lu position of list",str,val);
        }
    }
    return 0;
}
