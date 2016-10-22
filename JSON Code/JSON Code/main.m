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
        
        Inventory *invt = [[Inventory alloc]init];
        
        NSMutableDictionary *rice =[[NSMutableDictionary alloc]init];
        [rice setValue:@"BasmatiRice" forKey:@"Name"];
        [rice setValue:@"150KGS" forKey:@"Weight"];
        [rice setValue:@"80" forKey:@"PricePerKG"];
        
        NSMutableDictionary *pulses =[[NSMutableDictionary alloc]init];
        [pulses setValue:@"GreenGram" forKey:@"Name"];
        [pulses setValue:@"110KGS" forKey:@"Weight"];
        [pulses setValue:@"30" forKey:@"PricePerKG"];
        
        NSMutableDictionary *wheat =[[NSMutableDictionary alloc]init];
        [wheat setValue:@"Semolina" forKey:@"Name"];
        [wheat setValue:@"80KGS" forKey:@"Weight"];
        [wheat setValue:@"45" forKey:@"PricePerKG"];
        
        NSMutableDictionary *inventory =[[NSMutableDictionary alloc]init];
        [inventory setValue:rice  forKey:@"Rice"];
        [inventory setValue:pulses forKey:@"Pulses"];
        [inventory setValue:wheat forKey:@"Wheat"];
        
        NSMutableDictionary *jsondata = [NSJSONSerialization JSONObjectWithData:inventory options:NSJSONReadingMutableLeaves error:NULL];
        
        NSEnumerator *enumerator = [jsondata keyEnumerator];
        id key;
        
        while ((key=[enumerator nextObject]) != nil)
        {
            NSLog(@"key = %@ value = %@",key,[jsondata objectForKey:key]);
        }
        
            }
    return 0;
}
