//
//  main.m
//  Unordered LinkedList
//
//  Created by BridgeLabz Solutions LLP  on 10/18/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UnorderedLinkedList.h"

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

        UnorderedLinkedList *list = [[UnorderedLinkedList alloc]init];
        
        for (int i=0; i<[array count]; i++)
        {
            NSString *data = [array objectAtIndex:i];
            [list InsertWord:data];
        }
        
        char word[40];
        NSLog(@"Enter the word to be searched");
        scanf("%s",word);
        NSString *wrd = [NSString stringWithUTF8String:word];
        
        if ([list search:wrd])
        {
            [list remove:wrd];
        }
        else
        {
            NSLog(@"Word Not found");
            [list InsertWord:wrd];
        }
        
        [list print];
        
    }
    return 0;
}
