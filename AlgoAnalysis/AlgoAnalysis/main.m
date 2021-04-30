//
//  main.m
//  AlgoAnalysis
//
//  Created by hackIntosh on 4/21/21.
//

#import <Foundation/Foundation.h>
#import "sorter.h"
#import "Stack.h"
#import "StackArray.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//        NSMutableArray * testArr = [[NSMutableArray alloc] initWithObjects:@1,@3,@2,@4, nil];
        //unsortedArray is 4,2,6,5,3,9
        sorter * testSorter = [[sorter alloc] init];
        NSArray * testArr = [[NSArray alloc] initWithObjects:@7,@1, nil];
        NSArray * sortedArr1 = [[NSArray alloc] init];
//        NSArray * sortedArr2 = [[NSArray alloc] init];
//        NSMutableArray * sortedArr3 = [[NSMutableArray alloc]init];
//        NSMutableArray * sortedArr4 = [[NSMutableArray alloc]init];
//        sortedArr2 = [testSorter quickSort:testArr];
        sortedArr1 = [testSorter mergeSort:testArr];
//        sortedArr3 = [testSorter insertionSort:testArr];
//        sortedArr4 = [testSorter selectionSort:testArr];
        
       // [testSorter insertionSort:testArr];
        
//        all allocated with nothing inside

        long boundElements = 20000;
        Stack * listStack = [[Stack alloc] init];
        StackArray * arrStack = [[StackArray alloc] init];

        uint64_t startTimeList = 0;
        for(int i=0; i<boundElements-1;i++){
            NSNumber * randInt = @(rand() % 100);
            startTimeList = mach_absolute_time();
            [listStack push:randInt];
        }
        uint64_t endTimeList = 0;
        endTimeList = mach_absolute_time();

        long ListTimeComplexity = endTimeList - startTimeList;

        uint64_t startTimeArr =0;
        for(int i=0; i<boundElements-1;i++){
            NSNumber * randInt = @(rand() % 100);
            startTimeArr = mach_absolute_time();
            [arrStack push:randInt];
        }
        uint64_t endTimeArr = 0;
        endTimeArr = mach_absolute_time();

        long ArrTimeComplexity = endTimeArr - startTimeArr;


        NSLog(@"Array Implementation Time: %ld",ArrTimeComplexity);
        NSLog(@"List Implementation Time: %ld", ListTimeComplexity);
        
//
    }
    return 0;
}




