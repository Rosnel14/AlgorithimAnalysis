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
