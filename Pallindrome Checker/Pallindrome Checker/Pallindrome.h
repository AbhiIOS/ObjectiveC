//
//  Pallindrome.h
//  Pallindrome Checker
//
//  Created by BridgeLabz Solutions LLP  on 10/20/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pallindrome : NSObject
{
    char charData;
    Pallindrome *nextaddr;
}

-(id)initPal;
-(void)addFront:(char)item;
-(void)addRear:(char)item;
-(char)removeFront;
-(char)removeRear;
-(BOOL)isEmpty;
-(int)size;
-(void)checkPalWith:(NSString *)word;

@property char charac;
@property Pallindrome *nextAddr;

@end
