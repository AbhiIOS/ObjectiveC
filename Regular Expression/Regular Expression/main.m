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
        NSLog(@"Enter first name");
        scanf("%s",name);
        NSString *line = [NSString stringWithUTF8String:name];
        
    NSString *str = @"Hello <<name>>, We have your full name as <<full name>> in our system. your contact number is 91-xxxxxxxxxx. Please,let us know in case of any clarification Thank you BridgeLabz 01/01/2016.";
        
        [regex replaceWord:str withName:line];
        
        
       }
    return 0;
}
