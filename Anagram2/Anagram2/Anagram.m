//
//  Anagram.m
//  Anagram2
//
//  Created by Abhishek ganguly on 10/13/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import "Anagram.h"

@implementation Anagram

//Function for comparing two words
-(BOOL)anagram:(NSMutableArray *)str1 withString:(NSMutableArray *)str2
{
    int len = str1.count;
//    NSMutableArray *temp = [str1];
//    NSMutableArray *temp2 = (NSMutableArray *)str2;
    int count = 0;
    if (str2.count!=len)
    {
        return NO;
    }
    else
    {
        for (int i=0; i<[str1 count]; i++)
        {
            for (int j=0; j<[str2 count]; j++)
            {
                if ([str1 objectAtIndex:j]==[str2 objectAtIndex:i])
                {
                    [str1 replaceObjectAtIndex:j withObject:@"1"];
                    count+=1;
                }
            }
        }
        
    }
    
    if (count==len)
    {
        return YES;
    }
    else
    {
        return  NO;
    }
    
}
@end
