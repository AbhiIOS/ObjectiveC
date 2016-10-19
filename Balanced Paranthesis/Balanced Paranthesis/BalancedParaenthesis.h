//
//  BalancedParaenthesis.h
//  Balanced Paranthesis
//
//  Created by ABHISHEK GANGULY on 10/19/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BalancedParaenthesis : NSObject

-(id)init;
-(void)push:(char)charac;
-(char)pop;
-(char)peek;
-(BOOL)isEmpty;
-(int)size;

@end
