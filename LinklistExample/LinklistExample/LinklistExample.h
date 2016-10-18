//
//  LinklistExample.h
//  LinklistExample
//
//  Created by BridgeLabz Solutions LLP  on 10/18/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LinklistExample : NSObject
{
    NSInteger mCurrentValue;
    LinklistExample *mNext;
}

//function declaration
-(void) insert:(NSInteger)valueToInsert;
-(void) print;
//-(int) searchElement:(NSInteger) data;

@property (readwrite) NSInteger currentValue;
@property (retain) LinklistExample *next;

@end
