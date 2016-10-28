//
//  main.m
//  Utility Class
//
//  Created by Abhishek Ganguly on 10/24/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Utility.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Utility *utl = [[Utility alloc]init];
        
        NSMutableArray *secndsArray = [[NSMutableArray alloc]init];

        NSMutableArray *stringArray = [utl importStringData];
        NSMutableArray *integerArray = [utl importIntegerData];
        
        //EXECUTING STRING BINARY SEARCH
        NSMutableArray *sortedStringArray = [utl doSort:stringArray];
        char name[40];
        NSLog(@"Enter a word to be searched");
        scanf("%s",name);
        NSString *word = [NSString stringWithUTF8String:name];

        [utl startTimer];
        [utl doBinarySearchString:sortedStringArray WithName:word];
        [secndsArray addObject:[NSNumber numberWithFloat:[utl stopTimer]]];
        
        NSLog(@"\n");
        //EXECUTING INTEGER BINARY SEARCH
        NSMutableArray *sortedIntArray = [utl bubbleSortInteger:integerArray];
        int num;
        NSLog(@"Enter a number to be searched");
        scanf("%d",&num);
        
        [utl startTimer];
        [utl doBinarySearchInteger:sortedIntArray WithNum:num];
        [secndsArray addObject:[NSNumber numberWithFloat:[utl stopTimer]]];
        
        NSLog(@"\n");
        //EXECUTING BUBBLE SORT INTEGER
        [utl startTimer];
        NSLog(@"Bubble Sort Integer....");
        NSMutableArray *srtedInt = [utl bubbleSortInteger:integerArray];
        [secndsArray addObject:[NSNumber numberWithFloat:[utl stopTimer]]];
        NSString *str = [srtedInt componentsJoinedByString:@" "];
        NSLog(@"%@",str);
        
        NSLog(@"\n");
        //EXECUTING BUBBLE SORT STRING
        [utl startTimer];
        NSLog(@"Bubble Sort String...");
        NSMutableArray *srtedString = [utl bubbleSortString:stringArray];
        [secndsArray addObject:[NSNumber numberWithFloat:[utl stopTimer]]];
        NSString *str1 = [srtedString componentsJoinedByString:@" "];
        NSLog(@"%@",str1);
        
        NSLog(@"\n");
        //EXECUTING INSERTION SORT INTEGER
        [utl startTimer];
        NSLog(@"Insertion Sort Integer....");
        NSMutableArray *srtedINt = [utl insertionSortInteger:integerArray];
        [secndsArray addObject:[NSNumber numberWithFloat:[utl stopTimer]]];
        NSString *str2 = [srtedINt componentsJoinedByString:@" "];
        NSLog(@"%@",str2);
        
        NSLog(@"\n");
        //EXECUTING INSERTION SORT STRING
        [utl startTimer];
        NSLog(@"Insertion Sort String....");
         NSMutableArray *srtedSTR = [utl insertionSortString:stringArray];
        [secndsArray addObject:[NSNumber numberWithFloat:[utl stopTimer]]];
        NSString *str3 = [srtedSTR componentsJoinedByString:@" "];
        NSLog(@"%@",str3);
        
        NSLog(@"\n");
        NSLog(@"\n");
        
        //SORTING EXECUTION TIME OF EVERY METHOD
        secndsArray = [utl sort:secndsArray];
        for (long i=[secndsArray count]-1; i>=0; i--)
        {
            double val = [[secndsArray objectAtIndex:i] doubleValue];
            
            NSLog(@"%f seconds",val*-1);

        }
            }
    return 0;
}
