//
//  main.m
//  JSON Code
//
//  Created by BridgeLabz Solutions LLP  on 10/21/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Inventory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //Inventory *invt = [[Inventory alloc]init];
        NSError *error;
        
        NSMutableDictionary *rice =[NSMutableDictionary dictionaryWithObjectsAndKeys:
                                    @{@"Name": @"Basmati Rice",
                                    @"Weight" : @"150kgs",
                                      @"price(per kg)" : @"80"}, nil];
        
        NSMutableDictionary *pulses = [NSMutableDictionary dictionaryWithObjectsAndKeys:@{ @"Name" : @"Arhar dal",
                                            @"Weight":@"50kg",
                                            @"price(per kg" : @"50"},nil];
        
        NSMutableDictionary *wheat = [NSMutableDictionary dictionaryWithObjectsAndKeys:@{@"Name":@"Bajraa",@"Weight":@"100kgs",@"Price(per kg":@"40"}, nil];
        
        NSMutableDictionary *inventory = [NSMutableDictionary dictionaryWithObjectsAndKeys:@{@"Rice":rice,@"Pulses":pulses,@"Wheat":wheat}, nil];
        
        NSDictionary *jsondata = [NSJSONSerialization JSONObjectWithData:inventory options:NSJSONReadingMutableContainers error:&error];
        
        NSEnumerator *enumerator = [jsondata keyEnumerator];
        id key;
        
        while ((key=[enumerator nextObject]) != nil)
        {
            NSLog(@"key = %@ value = %@",key,[jsondata objectForKey:key]);
        }
        
            }
    return 0;
}
