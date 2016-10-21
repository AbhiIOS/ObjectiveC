//
//  RegularExpression.m
//  Regular Expression
//
//  Created by BridgeLabz Solutions LLP  on 10/21/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import "RegularExpression.h"

@implementation RegularExpression

-(void)replaceWord:(NSString *)string withName:(NSString *)name
{
    NSError *error;
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"<<name>>" options:NSRegularExpressionCaseInsensitive error:&error];
    
    NSString *modifiedString = [regex stringByReplacingMatchesInString:string options:0 range:NSMakeRange(0, [string length]) withTemplate:@"<<name>>"];
    NSLog(@"%@", modifiedString);
}
@end
