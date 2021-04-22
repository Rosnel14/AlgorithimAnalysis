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

-(NSArray *)mergeSort:(NSArray *)unsortedArray {
 
    //unsortedArray is 4,2,6,5,3,9
     if ([unsortedArray count] < 2)
    {
       return unsortedArray;
    }
      int middle = (int)([unsortedArray count]/2);
      NSRange left = NSMakeRange(0, middle);
      NSRange right = NSMakeRange(middle, ([unsortedArray count] - middle));
      NSArray *rightArr = [unsortedArray subarrayWithRange:right];
      NSArray *leftArr = [unsortedArray subarrayWithRange:left];
      return [self merge:[self mergeSort:leftArr] andRight:[self mergeSort:rightArr]];
}

-(NSArray *)merge:(NSArray *)leftArr andRight:(NSArray *)rightArr
{
  NSMutableArray *result = [[NSMutableArray alloc]init];
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
    }
 }
  NSRange leftRange = NSMakeRange(left, ([leftArr count] - left));
  NSRange rightRange = NSMakeRange(right, ([rightArr count] - right));
  NSArray *newRight = [rightArr subarrayWithRange:rightRange];
  NSArray *newLeft = [leftArr subarrayWithRange:leftRange];
  newLeft = [result arrayByAddingObjectsFromArray:newLeft];
  return [newLeft arrayByAddingObjectsFromArray:newRight];
}






@end
