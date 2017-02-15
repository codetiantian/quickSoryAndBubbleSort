//
//  ViewController.m
//  quickSort
//
//  Created by Elaine on 16--3.
//  Copyright © 2016年 yinuo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSMutableArray *array = [NSMutableArray arrayWithObjects:@2, @8, @6, @5, @1, @4, @7, @3, nil];
    int right = (int)array.count - 1;
    [self quickSortTestWithArray:array withLeft:0 andRight:right];
    
    NSLog(@"---%@", array);
    
    //  冒泡排序
//    [self bubleSortWithArray:array];
//    NSLog(@"---%@", array);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 快速排序
- (void)quickSortTestWithArray:(NSMutableArray *)array withLeft:(int)left andRight:(int)right
{
    if (left >= right) {
        return;
    }
    
    int i = left;
    int j = right;
    int key = [array[left] intValue];
    
    while (i < j) {
        while (i < j && key <= [array[j] intValue]) {
            j--;
        }
        
        array[i] = array[j];
        
        while (i < j && key >= [array[i] intValue]) {
            i++;
        }
        
        array[j] = array[i];
    }
    
    array[i] = [NSNumber numberWithInt:key];
    
    [self quickSortTestWithArray:array withLeft:left andRight:i - 1];
    [self quickSortTestWithArray:array withLeft:i + 1 andRight:right];
}

#pragma mark - 冒泡排序
- (void)bubleSortWithArray:(NSMutableArray *)array
{
    int i, j, temp;
    for (i = 0; i < array.count - 1; i++) {
        for (j = 0; j < array.count - 1 - i; j++) {
            if ([array[j] intValue] > [array[j + 1] intValue]) {
                temp = [array[j] intValue];
                array[j] = array[j + 1];
                array[j + 1] = [NSNumber numberWithInt:temp];
            }
        }
    }
}




//


- (void)quickSortByArray:(NSMutableArray *)array withLeftValue:(int)left withRightValue:(int)right
{
    if (left >= right) {
        return;
    }
    
    
    int i = left;
    int j = right;
    
    int temp = [array[left] intValue];
    
    while (i < j) {
        while (i < j && temp <= [array[j] intValue]) {
            j--;
        }
        array[i] = array[j];
        
        while (i < j && temp >= [array[i] intValue]) {
            i++;
        }
        array[j] = array[i];
    }
    
    array[i] = [NSNumber numberWithInt:temp];
    
    [self quickSortByArray:array withLeftValue:left withRightValue:i - 1];
    [self quickSortByArray:array withLeftValue:i + 1 withRightValue:right];
}









#pragma mark - 冒泡排序
- (void)sortByBubbling:(NSMutableArray *)array
{
    int i, j, temp;
    
    for (i = 0; i < array.count - 1; i++) {
        for (j = 0; j < array.count - 1 - i; j++) {
            if ([array[j] intValue] > [array[j + 1] intValue]) {
                temp = [array[j] intValue];
                array[j] = array[j + 1];
                array[j + 1] = [NSNumber numberWithInt:temp];
            }
        }
    }
}



















@end
