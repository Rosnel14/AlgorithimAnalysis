//
//  main.m
//  Sorting
//
//  Created by zxiao23 on 4/21/21.
//  Copyright © 2021 zxiao23. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Sorting.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        int size = 10;
        int* test = malloc(size * sizeof(int));
        for(int i = 0; i < size; i++){
            test[i] = arc4random_uniform(100);
            printf("%i ", test[i]);
        }
        printf("\n");
        uint64_t startTime = mach_absolute_time();
        int* result = [Sorting radixSort:test size:size];
        uint64_t endTime = mach_absolute_time();
        for(int i = 0; i < size; i++){
            printf("%i ", result[i]);
        }
        printf("\n");
        printf("Time Used: %llu \n", endTime - startTime);
        
        
    }
    return 0;
}
