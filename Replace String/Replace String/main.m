//
//  main.m
//  Replace String
//
//  Created by Abhishek Ganguly on 10/26/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *str = @"Hello <<UserName>>, How are you?";
        
        //TAKING USER INPUT
        char name[40];
        NSLog(@"Enter your Name");
        scanf("%s",name);
        NSString *name1 = [NSString stringWithUTF8String:name];
        
        //PERFORMING VALIDATION i.e. length of name must be min 3 char
        while (name1.length < 3)
        {
            NSLog(@"Enter your name with minimum 3 characters");
            scanf("%s",name);
            name1 = [NSString stringWithUTF8String:name];
        }
        
        //REPLACING THE EXPRESSION WITH USER NAME
        NSString *str1 = [str stringByReplacingOccurrencesOfString:@"<<UserName>>" withString:name1];
        NSLog(@"%@",str1);
    }
    return 0;
}
