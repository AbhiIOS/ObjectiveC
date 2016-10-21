//
//  main.m
//  Regular Expression
//
//  Created by BridgeLabz Solutions LLP  on 10/21/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RegularExpression.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        RegularExpression *regex = [[RegularExpression alloc]init];
        char name[40];
        NSLog(@"Enter name");
        scanf("%s",name);
        NSString *line = [NSString stringWithUTF8String:name];
        
    NSString *str = @"hello <<name>>";
    NSString *str2 = [str stringByReplacingOccurrencesOfString:@"<<name>>" withString:line];
        
    NSLog(@"its %@", str2);
        
        /*char line1[40];
        NSLog(@"Enter the string");
        scanf("%s",line1);
        NSString *str = [NSString stringWithUTF8String:line1];
        
        [regex replaceWord:str withName:line];*/
    }
    return 0;
}
