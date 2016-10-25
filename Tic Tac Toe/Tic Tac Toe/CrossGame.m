//
//  CrossGame.m
//  Tic Tac Toe
//
//  Created by ABHISHEK GANGULY on 10/25/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import "CrossGame.h"

@implementation CrossGame

//FOR PRINTING THE TicTacToe GRID IN OUTPUT
-(void)print:(char[3][3])arr
{
    NSString *str1 = @"";
    for (int k=0; k<3; k++)
    {
        NSMutableArray *array = [[NSMutableArray alloc]init];
        for (int m=0; m<3; m++)
        {
            NSString *num1 = [NSString stringWithFormat:@"%c",arr[k][m]];
            [array addObject:num1];
        }
        
        NSString *str = [array componentsJoinedByString:@" "];
        str1 =[str1 stringByAppendingFormat:@"\n%@",str];
        
    }
    
    NSLog(@"%@",str1);

}

//FOR PUTTING THE MARK ON A SPECIFIC POSITION OF A TicTacToe GRID
-(BOOL)addElements:(char [3][3])arr1 withNum:(char)num1 playerName:(NSString *)name
{
    int num;
    NSLog(@"Enter your choice");
    scanf("%d",&num);
    switch (num)
    {
        case 1:
            arr1[0][0] = num1;
            break;
            
        case 2:
            arr1[0][1] = num1;
            break;
            
        case 3:
            arr1[0][2] = num1;
            break;
            
        case 4:
            arr1[1][0] = num1;
            break;
            
        case 5:
            arr1[1][1] = num1;
            break;
            
        case 6:
            arr1[1][2] = num1;
            break;
            
        case 7:
            arr1[2][0] = num1;
            break;
            
        case 8:
            arr1[2][1] = num1;
            break;
            
        case 9:
            arr1[2][2] = num1;
            break;
            
        default:
            NSLog(@"Entered wrong choice");
            [self addElements:arr1 withNum:num1 playerName:name];
            break;
    }
    
    if ([self checkHorizontal:arr1 withName:name]) {
        for (int i=0; i<3; i++)
        {
            for (int j=0; j<3; j++)
            {
                gameArray[i][j] = arr1[i][j];
            }
        }
        [self print:arr1];
        
        return YES;
    }
    
    if ([self checkVertical:arr1 withName:name]) {
        for (int i=0; i<3; i++)
        {
            for (int j=0; j<3; j++)
            {
                gameArray[i][j] = arr1[i][j];
            }
        }
        [self print:arr1];
        return YES;
    }
    
    if ([self checkDiagonal:arr1 withName:name]) {
        for (int i=0; i<3; i++)
        {
            for (int j=0; j<3; j++)
            {
                gameArray[i][j] = arr1[i][j];
            }
        }
        [self print:arr1];
        return YES;
    }
    for (int i=0; i<3; i++)
    {
        for (int j=0; j<3; j++)
        {
            gameArray[i][j] = arr1[i][j];
        }
    }
    //[self print:arr1];
    return NO;
}
-(int)get:(int)i :(int)j{
    return gameArray[i][j];
}

//FOR CHECKING ALL THE ELEMENTS ROW WISE
-(BOOL)checkHorizontal:(char [3][3])arr2 withName:(NSString *)name1
{
    int count = 0;
    for (int i=0; i<3; i++)
    {
        if ((arr2[i][0]=='1'&& arr2[i][1]=='1' && arr2[i][2]=='1') || (arr2[i][0]=='0' && arr2[i][1]=='0' && arr2[i][2]=='0'))
        {
            NSLog(@"%@ WON THE GAME",name1);
            count+=1;
            break;
        }
    }
    if (count==0) {
        return NO;
    } else {
        return YES;
    }
}

//FOR CHECKING ALL THE ELEMENTS COLUMN WISE
-(BOOL)checkVertical:(char [3][3])arr3 withName:(NSString *)name2
{
    int count = 0;
    for (int i=0; i<3; i++)
    {
        if ((arr3[0][i]=='1' && arr3[1][i]=='1' && arr3[2][i]=='1') || (arr3[0][i]=='0' && arr3[1][i]=='0' && arr3[2][i]=='0'))
        {
            NSLog(@"%@ WON THE GAME",name2);
            count+=1;
            break;
        }
    }
    
    if (count==0) {
        return NO;
    } else {
        return YES;
    }
}

//FOR CHECKING ALL THE ELEMENTS DIAGONAL WISE
-(BOOL)checkDiagonal:(char [3][3])arr4 withName:(NSString *)name3
{
    if ((arr4[0][0]=='1' && arr4[1][1]=='1' && arr4[2][2]=='1') || (arr4[0][2]=='1' && arr4[1][1]=='1' && arr4[2][0]=='1') || (arr4[0][0]=='0' && arr4[1][1]=='0' && arr4[2][2]=='0') || (arr4[0][2]=='0' && arr4[1][1]=='0' && arr4[2][0]=='0'))
    {
        NSLog(@"%@ WON THE GAME",name3);
        return YES;
    }
    else
    {
        return NO;
    }
}

@end
