//
//  Sorting.m
//  Sorting
//
//  Created by zxiao23 on 4/21/21.
//  Copyright © 2021 zxiao23. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Sorting.h"

@implementation Sorting

//constructor
-(instancetype)init{
    self = [super init];
    if(self){
        NSLog(@"Sorting object successfully initialized");
    }
    return self;
}

//methods
//N^2
+(int *)insertionSort : (int *) arr size : (int) n{
    for(int beginUnsort = 1; beginUnsort < n; beginUnsort++){
        int curIndex = beginUnsort - 1;
        int value = arr[beginUnsort];
        while(curIndex >= 0 && value < arr[curIndex]){
            arr[curIndex + 1] = arr[curIndex];
            curIndex--;
        }
        arr[curIndex + 1] = value;
    }
    return arr;
}

//N^2
+(int *)selectionSort : (int *) arr size : (int) n{
    for(int curIndex = 0; curIndex < n; curIndex++){
        int smallestIndex = curIndex;
        for(int i = smallestIndex; i < n; i++){
            if(arr[smallestIndex] > arr[i]){
                smallestIndex = i;
            }
        }
        int temp = arr[curIndex];
        arr[curIndex] = arr[smallestIndex];
        arr[smallestIndex] = temp;
    }
    return arr;
}

+(int *)mergeSort : (int *) arr{
    
    return arr;
}

+(int *)mergeSortHelper : (int *) arr1 : (int *) arr2{
    return arr1;
}

+(int *)quickSort : (int *) arr{
    
    return arr;
}

//O(n+k)
+(int *)countingSort : (int *) arr size : (int) n{
    int maxNumber = [self largest:arr size:n];
    int* position = malloc((maxNumber+1)*sizeof(int));
    
    for(int i = 0; i <= maxNumber; i++){
        position[i] = 0;
    }
    for(int i = 0; i < n; i++){
        position[arr[i]]++;
    }
    for(int i = 1; i <= maxNumber; i++){
        position[i] += position[i-1];
    }
    
    int* ans = malloc((n+1) * sizeof(int));
    
    for(int i = n - 1; i >= 0 ; --i){
        ans[position[arr[i]] - 1] = arr[i];
        position[arr[i]]--;
    }
    return ans;
}

+(int *)countingRadix:(int *)arr size: (int) n digit: (int) d{
    int* position = malloc(10*sizeof(int));
    
    for(int i = 0; i < 10; i++){
        position[i] = 0;
    }
    
    for(int i = 0; i < n; i++){
        position[(arr[i] / d) % 10]++;
    }
    for(int i = 1; i < 10; i++){
        position[i] += position[i-1];
    }
    
    int *ans = malloc((n+1) * sizeof(int));
    for(int i = n - 1; i >= 0 ; i--){
        ans[position[(arr[i] / d) % 10] - 1] = arr[i];
        position[(arr[i] / d) % 10]--;
    }
    return ans;
}

+(int *)radixSort : (int *) arr size : (int) n{
    int maxNumber = [self largest:arr size :n];
    for(int digit = 1; maxNumber / digit > 0; digit *= 10){
        arr = [self countingRadix:arr size: n digit:digit];
    }
    return arr;
}

+(int)binarySearch : (int *) arr size : (int) n target : (int) target{
    int left = 0;
    int right = n-1;
    while(left <= right){
        int mid = (left + right)/2;
        if(arr[mid] == target){
            return mid;
        }else if(arr[mid] < target){
            left = mid+1;
        }else{
            right = mid-1;
        }
    }
    return -1;
}

+(int)largest : (int*) arr size : (int) n{
    int max = -1;
    for(int i = 0; i < n; i++){
        if(max < arr[i]){
            max = arr[i];
        }
    }
    return max;
}

+(int)birthdayProblem : (int) n{
    
}

@end
