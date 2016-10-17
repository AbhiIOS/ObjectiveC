//
//  Triplets.m
//  Integer Triplets
//
//  Created by ABHISHEK GANGULY  on 10/17/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import "Triplets.h"

@implementation Triplets

-(void)findTriplet:(NSMutableArray *)ar
{
    int count=0;
    NSMutableString *str = [[NSMutableString alloc]init];
    NSMutableArray *new = [[NSMutableArray alloc]initWithCapacity:[ar count]];
    for (int i=0; i<[ar count]-2; i++)
    {
        for (int j=i+1; j<[ar count]-1; j++)
        {
            for (int k=j+1; k<[ar count]; k++)
            {
                int val1 = [[ar objectAtIndex:i] intValue];
                int val2 = [[ar objectAtIndex:j] intValue];
                int val3 = [[ar objectAtIndex:k] intValue];
                
                if ((val1+val2+val3)==0)
                {
                    count+=1;
                    NSMutableArray *ar1 = [[NSMutableArray alloc]initWithCapacity:3];
                    int count1 = 0;
                    for (int m=0; m<3; m++)
                    {
                        if (count1==0)
                        {
                            [ar1 insertObject:ar[i] atIndex:m];
                            count1+=1;
                        }
                        else if (count1==1)
                        {
                            [ar1 insertObject:ar[j] atIndex:m];
                            count1+=1;
                        }
                        else if (count1==2)
                        {
                            [ar1 insertObject:ar[k] atIndex:m];
                            
                        }
                    }
                   
                    str = (NSMutableString*)[ar1 componentsJoinedByString:@","];
                    [new insertObject:str atIndex:i];
                    
                }

            }
        }
    }
    
    str = (NSMutableString*)[new componentsJoinedByString:@"\n"];
    NSLog(@"The number of Triplets are: %d",count);
    NSLog(@"\n%@",str);
}

@end
