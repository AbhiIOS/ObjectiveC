//
//  main.m
//  2D Array
//
//  Created by ABHISHEK GANGULY on 10/13/16.
//  Copyright © 2016 BridgeLabz Solutions LLP . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "2dArray.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        _dArray *array = [[_dArray alloc]init];
        
        int rows,columns;
        NSLog(@"Enter the no. of rows of 2d array");
        scanf("%d",&rows);
        
        NSLog(@"Enter the no. of columns of 2d array");
        scanf("%d",&columns);
        
        NSMutableArray *Rows = [[NSMutableArray alloc]initWithCapacity:rows];
        NSMutableArray *Columns;
        
        for (int i=0; i<rows; i++)
        {
            Columns = [[NSMutableArray alloc]initWithCapacity:columns];
            for (int j=0; j<columns; j++)
            {
                int element;
                NSLog(@"Enter the %d,%d element",i+1,j+1);
                scanf("%d",&element);
                id data = [NSNumber numberWithInt:element];
                [Columns insertObject:data atIndex:j];
            }
            
            [Rows insertObject:Columns atIndex:i];
        }
        
        [array print2Darray:Rows];
        
    }
    return 0;
}
