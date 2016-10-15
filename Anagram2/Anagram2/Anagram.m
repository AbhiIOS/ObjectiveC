//
//  Anagram.m
//  Anagram2
//
//  Created by BridgeLabz Solutions LLP  on 10/13/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import "Anagram.h"

@implementation Anagram

-(BOOL)anagram:(NSString *)str1 withString:(NSString *)str2
{
    int len = str1.length;
    int count = 0;
    if (str2.length!=len)
    {
        return NO;
    }
    else
    {
        for (int i=0; i<[str1 length]; i++)
        {
            for (int j=0; j<[str2 length]; j++)
            {
                if ([str1 characterAtIndex:i]==[str2 characterAtIndex:j])
                {
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
