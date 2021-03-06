//
//  sorter.m
//  AlgoAnalysis
//
//  Created by hackIntosh on 4/21/21.
//

#import <Foundation/Foundation.h>
#import "sorter.h"

@implementation sorter



-(instancetype)init{
    if (self) {
        self = [super init];
    }
    return self;
}

//N^2
-(NSMutableArray *)insertionSort : (NSMutableArray *) arr{
    for(int beginUnsort = 1; beginUnsort < [arr count]; beginUnsort++){
        int curIndex = beginUnsort - 1;
        int value = [arr[beginUnsort] intValue];
        while(curIndex >= 0 && value < [arr[curIndex] intValue]){
            arr[curIndex + 1] = arr[curIndex];
            curIndex--;
        }
        arr[curIndex + 1] = [NSNumber numberWithInt:value];
    }
    return arr;
}

//N^2
-(NSMutableArray *)selectionSort : (NSMutableArray *) arr{
    for(int curIndex = 0; curIndex < [arr count]; curIndex++){
        int smallestIndex = curIndex;
        for(int i = smallestIndex; i < [arr count]; i++){
            if(arr[smallestIndex] > arr[i]){
                smallestIndex = i;
            }
        }
        NSNumber *temp = arr[curIndex];
        arr[curIndex] = arr[smallestIndex];
        arr[smallestIndex] = temp;
    }
    return arr;
}

<<<<<<< HEAD
-(void)insertionSort:(int)arr[] {
    for(int i=1; i < ; i++){
        id current = array[i];
        int j = i -1;
        while(j >= 0 && array[j]>current){
            [array objectAtIndex:j+1] = [array objectAtIndex:j];
            j--;
        }
=======
-(NSArray *)mergeSort:(NSArray *)unsortedArray {
 
    //kinda assuming if its just two items, it's already sorted
     if ([unsortedArray count] < 2)
    {
       return unsortedArray;
    }
    //we've got to split the array in the mid
      int middle = (int)([unsortedArray count]/2);
      NSRange left = NSMakeRange(0, middle);
      NSRange right = NSMakeRange(middle, ([unsortedArray count] - middle));
      NSArray *rightArr = [unsortedArray subarrayWithRange:right]; //right side arr
      NSArray *leftArr = [unsortedArray subarrayWithRange:left]; //left side arr
      return [self merge:[self mergeSort:leftArr] andRight:[self mergeSort:rightArr]]; //go into wrapper
}

//wrapper method for mergesort * remind Ros to comment this later
-(NSArray *)merge:(NSArray *)leftArr andRight:(NSArray *)rightArr
{
  NSMutableArray *result = [[NSMutableArray alloc]init]; //final sorted arr
  int right = 0;
  int left = 0;

  while (left < [leftArr count] && right < [rightArr count])
  {
      if ([[leftArr objectAtIndex:left] intValue] < [[rightArr objectAtIndex:right] intValue])
    {
        [result addObject:[leftArr objectAtIndex:left++]];
    }
    else
    {
        [result addObject:[rightArr objectAtIndex:right++]];
>>>>>>> ef5a69d70ba58c8ea097d4d211a5ecadf20c0440
    }
 }
  NSRange leftRange = NSMakeRange(left, ([leftArr count] - left));
  NSRange rightRange = NSMakeRange(right, ([rightArr count] - right));
  NSArray *newRight = [rightArr subarrayWithRange:rightRange];
  NSArray *newLeft = [leftArr subarrayWithRange:leftRange];
  newLeft = [result arrayByAddingObjectsFromArray:newLeft];
  return [newLeft arrayByAddingObjectsFromArray:newRight];
}

//I've got to make the diagram for this a bit cleaner
//reminder to comment this afterward and make the drawings nicer -Ros 
-(NSArray *)quickSort:(NSArray *)unsortedArray{
    
    int count = (int)[unsortedArray count];
        if (count <= 1) {
            return unsortedArray;
        }
     
        int pivot = [[unsortedArray objectAtIndex: (count/2)] intValue];
        NSMutableArray *smallerThanArray = [NSMutableArray array];
        NSMutableArray *largerThanArray = [NSMutableArray array];
        NSMutableArray *pivotArray = [NSMutableArray array];
        [pivotArray addObject: @(pivot)];
     
        for (int e = 0; e < count; e++) {
            int num = [[unsortedArray objectAtIndex:e] intValue];
     
            if (num < pivot) {
                [smallerThanArray addObject: @(num)];
            } else if (num > pivot) {
                [largerThanArray addObject: @(num)];
                // To address the possibly duplicate that is defined in the pivot
            } else if (e != (count/2) && pivot == num) {
                [pivotArray addObject: @(num)];
            }
        }
     
        NSMutableArray *returnArray = [NSMutableArray array];
        [returnArray addObjectsFromArray: [self quickSort: smallerThanArray]];
        [returnArray addObjectsFromArray: pivotArray];
        [returnArray addObjectsFromArray: [self quickSort: largerThanArray]];
     
        return returnArray;
    
}


/**
  * When given jumbled or discending ordered array of integers, following bubble sort method will give you
  * an array ordered in ascending order.
  */
 -(NSArray *) bubbleSort:(NSArray *) arrayToBeSorted {
     // As we can't swap integers in a static array, make a mutable array out of the given static array.
     NSMutableArray *muArrRaw = [[NSMutableArray alloc] initWithArray:arrayToBeSorted];

     // iterate through the array as rounds
     for (int i = 0; i < [muArrRaw count]; i++) {
         // iterate through each element of the array with the given range
         for (int j = 0; j < [muArrRaw count] - i; j++) {
             // comparison
             if (j < ([muArrRaw count] - 1) && [[muArrRaw objectAtIndex:j] intValue] > [[muArrRaw objectAtIndex:(j + 1)] intValue]) {
                 int temp = [[muArrRaw objectAtIndex:j] intValue];   // taken the value to be swapped first

                 // then do the swapping
                 [muArrRaw replaceObjectAtIndex:j withObject:[muArrRaw objectAtIndex:(j + 1)]];
                 [muArrRaw replaceObjectAtIndex:(j + 1) withObject:[NSNumber numberWithInt:temp]];
             }
         }
     }

     // return the sorted array
     return [muArrRaw mutableCopy];
 }




@end
