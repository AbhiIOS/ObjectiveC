//
//  main.m
//  Utility Class
//
//  Created by BridgeLabz Solutions LLP  on 10/24/16.
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
        
        NSMutableArray *sortedStringArray = [utl doSort:stringArray];
        [utl startTimer];
        [utl doBinarySearchString:sortedStringArray];
        [secndsArray addObject:[NSNumber numberWithFloat:[utl stopTimer]]];
        
        NSLog(@"\n");
        NSMutableArray *sortedIntArray = [utl bubbleSortInteger:integerArray];
        [utl startTimer];
        [utl doBinarySearchInteger:sortedIntArray];
        [secndsArray addObject:[NSNumber numberWithFloat:[utl stopTimer]]];
        
        NSLog(@"\n");
        [utl startTimer];
        NSLog(@"Bubble Sort Integer....");
        NSMutableArray *srtedInt = [utl bubbleSortInteger:integerArray];
        [secndsArray addObject:[NSNumber numberWithFloat:[utl stopTimer]]];
        NSString *str = [srtedInt componentsJoinedByString:@" "];
        NSLog(@"%@",str);
        
        NSLog(@"\n");
        [utl startTimer];
        NSLog(@"Bubble Sort String...");
        NSMutableArray *srtedString = [utl bubbleSortString:stringArray];
        [secndsArray addObject:[NSNumber numberWithFloat:[utl stopTimer]]];
        NSString *str1 = [srtedString componentsJoinedByString:@" "];
        NSLog(@"%@",str1);
        
        NSLog(@"\n");
        [utl startTimer];
        NSLog(@"Insertion Sort Integer....");
        NSMutableArray *srtedINt = [utl insertionSortInteger:integerArray];
        [secndsArray addObject:[NSNumber numberWithFloat:[utl stopTimer]]];
        NSString *str2 = [srtedINt componentsJoinedByString:@" "];
        NSLog(@"%@",str2);
        
        NSLog(@"\n");
        [utl startTimer];
        NSLog(@"Insertion Sort String....");
         NSMutableArray *srtedSTR = [utl insertionSortString:stringArray];
        [secndsArray addObject:[NSNumber numberWithFloat:[utl stopTimer]]];
        NSString *str3 = [srtedSTR componentsJoinedByString:@" "];
        NSLog(@"%@",str3);
        
        NSLog(@"\n");
        NSLog(@"\n");
        
        secndsArray = [utl sort:secndsArray];
        for (long i=[secndsArray count]-1; i>=0; i--)
        {
            double val = [[secndsArray objectAtIndex:i] doubleValue];
            
            NSLog(@"%f",val*-1);

        }
            }
    return 0;
}
