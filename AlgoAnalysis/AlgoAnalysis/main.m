//
//  main.m
//  AlgoAnalysis
//
//  Created by hackIntosh on 4/21/21.
//

#import <Foundation/Foundation.h>
#import "sorter.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//        NSMutableArray * testArr = [[NSMutableArray alloc] initWithObjects:@1,@3,@2,@4, nil];
        //unsortedArray is 4,2,6,5,3,9
        sorter * testSorter = [[sorter alloc] init];
        NSArray * testArr = [[NSArray alloc] initWithObjects:@4,@2,@6,@5,@3,@9, nil];
        NSArray * sortedArr1 = [[NSArray alloc] init];
        NSArray * sortedArr2 = [[NSArray alloc] init];
        NSMutableArray * sortedArr3 = [[NSMutableArray alloc]init];
        NSMutableArray * sortedArr4 = [[NSMutableArray alloc]init];
        sortedArr2 = [testSorter quickSort:testArr];
        sortedArr1 = [testSorter mergeSort:testArr];
        sortedArr3 = [testSorter insertionSort:testArr];
        sortedArr4 = [testSorter selectionSort:testArr];
        
       // [testSorter insertionSort:testArr];
        
//        for(int i=0; i<[sortedArr1 count]; i++){
//            NSLog(@"Merge sort: %@",[sortedArr1 objectAtIndex:i]);
//        }
        
        for(int i=0; i<[sortedArr2 count]; i++){
            NSLog(@"quick sort: %@",[sortedArr2 objectAtIndex:i]);
        }
        
        for(int i=0; i<[sortedArr2 count]; i++){
            NSLog(@"quick sort: %@",[sortedArr2 objectAtIndex:i]);
        }
        

    }
    return 0;
}


