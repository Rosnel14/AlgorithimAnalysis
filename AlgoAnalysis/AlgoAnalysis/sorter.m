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



-(void)insertionSort:(NSMutableArray *)array {
   
}

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


@end
