//
//  main.m
//  Inventory Mananagment
//
//  Created by BridgeLabz Solutions LLP  on 10/24/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSError *error;
        NSString *str =[NSString stringWithContentsOfFile:@"/Users/bridgelabz/Desktop/File.json" encoding:NSUTF8StringEncoding error:&error];
        
        NSData *jsonData = [str dataUsingEncoding:NSUTF8StringEncoding];
        
        NSDictionary *json = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers error:&error];
        NSDictionary *fetchdata = [json objectForKey:@"data"];
        NSLog(@"%@",fetchdata);
    }
    return 0;
}
