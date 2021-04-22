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
        
        NSMutableArray * testArr = [[NSMutableArray alloc] initWithObjects:@1,@3,@2,@4, nil];
        
        sorter * testSorter = [[sorter alloc] init];
        
        [testSorter insertionSort:testArr];
        
        

    }
    return 0;
}


