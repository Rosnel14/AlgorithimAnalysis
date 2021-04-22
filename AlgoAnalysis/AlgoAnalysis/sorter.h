//
//  sorter.h
//  AlgoAnalysis
//
//  Created by hackIntosh on 4/21/21.
//

#ifndef sorter_h
#define sorter_h

@interface sorter : NSObject

//constructor
-(instancetype)init;

//insertion sort algo
-(void)insertionSort:(int[] arr);

//selection sort algo
-(void)selectionSort:(int *) arr;

//merge sort
-(void)mergeSort:(int *)arr;

//quick sort
-(void)quickSort:(int *)arr;

@end

#endif /* sorter_h */
