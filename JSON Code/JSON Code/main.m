//
//  main.m
//  JSON Code
//
//  Created by Abhishek Ganguly on 10/21/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Inventory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //Reading data from file
        NSError *error;
        NSString *str =[NSString stringWithContentsOfFile:@"/Users/bridgelabz/Desktop/File.json" encoding:NSUTF8StringEncoding error:&error];
        
        NSData *jsonData = [str dataUsingEncoding:NSUTF8StringEncoding];
        
        //Creating json object
        NSDictionary *json = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers error:&error];
        NSLog(@"%@", error);
        
        //printing the json data
        NSLog(@"%@", json[@"data"]);
                    }
    return 0;
}
