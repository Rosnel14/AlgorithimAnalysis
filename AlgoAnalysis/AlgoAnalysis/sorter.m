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




@end
