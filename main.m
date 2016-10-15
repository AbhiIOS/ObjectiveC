//
//  main.m
//  KAN2
//
//  Created by BridgeLabz Solution LLP on 08/10/16.
//  Copyright © 2016 BridgeLabz Solution LLP. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char name[40];
        NSLog(@"enter the name");
        scanf("%s",name);
        
        NSString *name1 = [NSString stringWithUTF8String:name];
        NSLog(@"welcome all%@",name1);

        NSLog(@"welcome hello hiii%@",name1);

        
        
    }

    return 0;
}
