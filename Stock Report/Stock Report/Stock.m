//
//  Stock.m
//  Stock Report
//
//  Created by Abhishek Ganguly on 10/13/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import "Stock.h"

@implementation Stock

NSMutableString *names;
NSMutableArray *shares;
NSMutableArray *values;
NSMutableArray *total;

//function for entering the data of shares
-(void)entry:(int)num
{
    names = [[NSMutableString alloc]initWithCapacity:100];
    shares = [[NSMutableArray alloc]initWithCapacity:100];
    values = [[NSMutableArray alloc]initWithCapacity:100];
   
    char name[50];
    int share,price;
    
    for (int i=0; i<num; i++)
    {
        NSLog(@"Enter the details of stock: %d",i+1);
        
        //Taking Name from user
        NSLog(@"Name:");
        scanf("%s",name);
        NSString *str = [NSString stringWithCString:name encoding:1];
        [names insertString:str atIndex:i];
        
        //Total No. of shares
        NSLog(@"No. of shares:");
        scanf("%d",&share);
        id num = [NSNumber numberWithInt:share];
        [shares insertObject:num atIndex:i];
        
        //Price of each share
        NSLog(@"Values of each share");
        scanf("%d",&price);
        id num1 = [NSNumber numberWithInt:price];
        [values insertObject:num1 atIndex:i];
        
    }
}

//Function for calculating the price of shares
-(void)calculate:(int)num
{
     total = [[NSMutableArray alloc]initWithCapacity:100];
    
    
    for (int i=0; i<num; i++)
    {
        NSNumber *a =[shares objectAtIndex:i];
        NSNumber *b =[values objectAtIndex:i];
        long anum = [a integerValue];
        long bnum = [b integerValue];
        NSLog(@"%ld",anum*bnum);
        
        id num = [NSNumber numberWithLong:(anum*bnum)];
        
        [total insertObject:num atIndex:i];
        NSLog(@"Total value of shares: %d is %@ Rs.",i+1,num);
    }
}

//Function for calculating the total price of shares
-(void)allTotal:(int)num
{
    long alltotal = 0;
    for (int i=0; i<num; i++)
    {
        NSNumber *tot =[total objectAtIndex:i];
        long totnum = [tot integerValue];
        alltotal = alltotal+totnum;
    }
    NSLog(@"The Total value of share is %ld Rs.",alltotal);
}

@end
