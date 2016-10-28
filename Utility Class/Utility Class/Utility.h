//
//  Utility.h
//  Utility Class
//
//  Created by Abhishek Ganguly on 10/24/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Utility : NSObject

-(NSMutableArray *)importStringData;
-(NSMutableArray *)importIntegerData;
-(NSMutableArray *)doSort:(NSMutableArray *)ary;
-(void)doBinarySearchString:(NSMutableArray *)ary1 WithName:(NSString *)name;
-(void)doBinarySearchInteger:(NSMutableArray *)ary2 WithNum:(int)number;
-(NSMutableArray *)bubbleSortInteger:(NSMutableArray *)ary3;
-(NSMutableArray *)bubbleSortString:(NSMutableArray *)ary4;
-(NSMutableArray *)insertionSortInteger:(NSMutableArray *)ary5;
-(NSMutableArray *)insertionSortString:(NSMutableArray *)ary6;
-(NSDate *)startTimer;
-(float)stopTimer;
-(NSMutableArray *)sort:(NSMutableArray *)ary7;

@end
