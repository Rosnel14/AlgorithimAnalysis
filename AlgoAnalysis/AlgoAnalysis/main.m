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
        NSArray * sortedArr = [[NSArray alloc] init];
       sortedArr = [testSorter mergeSort:testArr];
       // [testSorter insertionSort:testArr];
        
        for(int i=0; i<[sortedArr count]; i++){
            NSLog(@"%@",[sortedArr objectAtIndex:i]);
        }

    }
    return 0;
}


